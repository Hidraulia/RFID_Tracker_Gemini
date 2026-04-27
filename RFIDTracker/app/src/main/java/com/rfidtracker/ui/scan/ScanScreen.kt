package com.rfidtracker.ui.scan

import androidx.compose.animation.*
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.hilt.navigation.compose.hiltViewModel
import com.rfidtracker.data.model.RfidTag
import com.rfidtracker.rfid.ReaderState
import java.text.SimpleDateFormat
import java.util.*

@Composable
fun ScanScreen(viewModel: ScanViewModel = hiltViewModel()) {
    val uiState by viewModel.uiState.collectAsState()

    Column(
        modifier = Modifier
            .fillMaxSize()
            .background(MaterialTheme.colorScheme.background)
    ) {
        // Header con estado del lector
        ReaderStatusBar(state = uiState.readerState)

        // Contadores
        ScanStatsRow(
            uniqueTags = uiState.uniqueTagCount,
            totalReads = uiState.totalReadCount
        )

        // Botones de control
        ScanControlButtons(
            isScanning = uiState.isScanning,
            isReady = uiState.readerState == ReaderState.READY || uiState.readerState == ReaderState.SCANNING,
            onStartScan = viewModel::startScan,
            onStopScan = viewModel::stopScan,
            onClear = viewModel::clearScan
        )

        Divider(modifier = Modifier.padding(vertical = 8.dp))

        // Lista de tags
        if (uiState.scannedTags.isEmpty()) {
            EmptyState(isScanning = uiState.isScanning)
        } else {
            TagList(tags = uiState.scannedTags)
        }

        // Error snackbar
        uiState.error?.let { error ->
            Snackbar(
                modifier = Modifier.padding(16.dp),
                action = {
                    TextButton(onClick = viewModel::dismissError) { Text("Cerrar") }
                }
            ) { Text(error) }
        }
    }
}

@Composable
private fun ReaderStatusBar(state: ReaderState) {
    val (color, label) = when (state) {
        ReaderState.UNINITIALIZED -> MaterialTheme.colorScheme.outline to "Inicializando..."
        ReaderState.READY -> Color(0xFF4CAF50) to "Listo"
        ReaderState.SCANNING -> Color(0xFF2196F3) to "Escaneando"
        ReaderState.ERROR -> MaterialTheme.colorScheme.error to "Error"
        ReaderState.RELEASED -> MaterialTheme.colorScheme.outline to "Desconectado"
    }

    Row(
        modifier = Modifier
            .fillMaxWidth()
            .background(MaterialTheme.colorScheme.surfaceVariant)
            .padding(horizontal = 16.dp, vertical = 8.dp),
        verticalAlignment = Alignment.CenterVertically,
        horizontalArrangement = Arrangement.spacedBy(8.dp)
    ) {
        // Indicador animado
        if (state == ReaderState.SCANNING) {
            CircularProgressIndicator(
                modifier = Modifier.size(12.dp),
                strokeWidth = 2.dp,
                color = color
            )
        } else {
            Box(
                modifier = Modifier
                    .size(12.dp)
                    .clip(CircleShape)
                    .background(color)
            )
        }
        Text(
            text = "Lector RFID · $label",
            style = MaterialTheme.typography.labelMedium,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
    }
}

@Composable
private fun ScanStatsRow(uniqueTags: Int, totalReads: Int) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .padding(16.dp),
        horizontalArrangement = Arrangement.spacedBy(12.dp)
    ) {
        StatCard(
            label = "Tags únicos",
            value = uniqueTags.toString(),
            icon = Icons.Default.Tag,
            modifier = Modifier.weight(1f)
        )
        StatCard(
            label = "Total lecturas",
            value = totalReads.toString(),
            icon = Icons.Default.Refresh,
            modifier = Modifier.weight(1f)
        )
    }
}

@Composable
private fun StatCard(label: String, value: String, icon: androidx.compose.ui.graphics.vector.ImageVector, modifier: Modifier = Modifier) {
    Card(
        modifier = modifier,
        colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.secondaryContainer)
    ) {
        Column(modifier = Modifier.padding(12.dp)) {
            Icon(
                imageVector = icon,
                contentDescription = null,
                tint = MaterialTheme.colorScheme.onSecondaryContainer,
                modifier = Modifier.size(20.dp)
            )
            Spacer(Modifier.height(4.dp))
            Text(
                text = value,
                style = MaterialTheme.typography.headlineMedium,
                fontWeight = FontWeight.Bold,
                color = MaterialTheme.colorScheme.onSecondaryContainer
            )
            Text(
                text = label,
                style = MaterialTheme.typography.labelSmall,
                color = MaterialTheme.colorScheme.onSecondaryContainer.copy(alpha = 0.7f)
            )
        }
    }
}

@Composable
private fun ScanControlButtons(
    isScanning: Boolean,
    isReady: Boolean,
    onStartScan: () -> Unit,
    onStopScan: () -> Unit,
    onClear: () -> Unit
) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .padding(horizontal = 16.dp),
        horizontalArrangement = Arrangement.spacedBy(8.dp)
    ) {
        if (isScanning) {
            Button(
                onClick = onStopScan,
                modifier = Modifier.weight(1f),
                colors = ButtonDefaults.buttonColors(containerColor = MaterialTheme.colorScheme.error)
            ) {
                Icon(Icons.Default.Stop, contentDescription = null)
                Spacer(Modifier.width(8.dp))
                Text("Detener")
            }
        } else {
            Button(
                onClick = onStartScan,
                modifier = Modifier.weight(1f),
                enabled = isReady
            ) {
                Icon(Icons.Default.PlayArrow, contentDescription = null)
                Spacer(Modifier.width(8.dp))
                Text("Iniciar scan")
            }
        }

        OutlinedButton(onClick = onClear, enabled = !isScanning) {
            Icon(Icons.Default.Delete, contentDescription = "Limpiar")
        }
    }
}

@Composable
private fun TagList(tags: List<RfidTag>) {
    LazyColumn(
        contentPadding = PaddingValues(horizontal = 16.dp, vertical = 8.dp),
        verticalArrangement = Arrangement.spacedBy(8.dp)
    ) {
        items(tags, key = { it.epc }) { tag ->
            TagCard(tag = tag)
        }
    }
}

@Composable
private fun TagCard(tag: RfidTag) {
    val rssiColor = when {
        tag.rssi > -50 -> Color(0xFF4CAF50)
        tag.rssi > -65 -> Color(0xFFFF9800)
        else -> Color(0xFFF44336)
    }
    val timeFormatter = remember { SimpleDateFormat("HH:mm:ss", Locale.getDefault()) }

    Card(
        modifier = Modifier.fillMaxWidth(),
        elevation = CardDefaults.cardElevation(defaultElevation = 1.dp)
    ) {
        Row(
            modifier = Modifier.padding(12.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            // Indicador RSSI
            Column(
                horizontalAlignment = Alignment.CenterHorizontally,
                modifier = Modifier.width(52.dp)
            ) {
                Icon(
                    imageVector = Icons.Default.Wifi,
                    contentDescription = "RSSI",
                    tint = rssiColor,
                    modifier = Modifier.size(24.dp)
                )
                Text(
                    text = "${tag.rssi} dBm",
                    fontSize = 10.sp,
                    color = rssiColor,
                    fontWeight = FontWeight.SemiBold
                )
            }

            Spacer(Modifier.width(12.dp))

            // Datos del tag
            Column(modifier = Modifier.weight(1f)) {
                Text(
                    text = tag.epc,
                    fontFamily = FontFamily.Monospace,
                    fontSize = 13.sp,
                    fontWeight = FontWeight.Medium,
                    color = MaterialTheme.colorScheme.onSurface
                )
                Spacer(Modifier.height(2.dp))
                Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                    Text(
                        text = "Antena ${tag.antennaId}",
                        style = MaterialTheme.typography.labelSmall,
                        color = MaterialTheme.colorScheme.outline
                    )
                    Text(
                        text = timeFormatter.format(Date(tag.timestamp)),
                        style = MaterialTheme.typography.labelSmall,
                        color = MaterialTheme.colorScheme.outline
                    )
                }
                tag.tid?.let {
                    Text(
                        text = "TID: $it",
                        style = MaterialTheme.typography.labelSmall,
                        color = MaterialTheme.colorScheme.outline,
                        fontFamily = FontFamily.Monospace
                    )
                }
            }
        }
    }
}

@Composable
private fun EmptyState(isScanning: Boolean) {
    Box(
        modifier = Modifier.fillMaxSize(),
        contentAlignment = Alignment.Center
    ) {
        Column(horizontalAlignment = Alignment.CenterHorizontally) {
            Icon(
                imageVector = if (isScanning) Icons.Default.SearchOff else Icons.Default.NfcOutlined,
                contentDescription = null,
                modifier = Modifier.size(64.dp),
                tint = MaterialTheme.colorScheme.outline
            )
            Spacer(Modifier.height(16.dp))
            Text(
                text = if (isScanning) "Buscando etiquetas..." else "Pulsa 'Iniciar scan' para comenzar",
                style = MaterialTheme.typography.bodyLarge,
                color = MaterialTheme.colorScheme.outline
            )
        }
    }
}
