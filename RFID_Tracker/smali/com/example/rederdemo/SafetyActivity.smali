.class public Lcom/example/rederdemo/SafetyActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SafetyActivity.java"

.field private isAlertActive:Z
.field private detectionCount:I
.field private rssiThreshold:I
.field private logText:Ljava/lang/StringBuilder;
.field private handler:Landroid/os/Handler;
.field private client:Lcom/gg/reader/api/dal/GClient;
.field private vibrator:Landroid/os/Vibrator;

# Vistas cacheadas
.field private vRoot:Landroid/view/View;
.field private tvStatus:Landroid/widget/TextView;
.field private tvEpc:Landroid/widget/TextView;
.field private tvRssi:Landroid/widget/TextView;
.field private tvCount:Landroid/widget/TextView;
.field private tvLog:Landroid/widget/TextView;
.field private btnConfirm:Landroid/widget/Button;
.field private etRssi:Landroid/widget/EditText;

# ── Constructor ────────────────────────────────────────────────
.method public constructor <init>()V
    .locals 0
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V
    return-void
.end method

# ── onCreate ───────────────────────────────────────────────────
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;
    move-result-object v0
    const v1, 0x80
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const v0, 0x7f0c0062
    invoke-virtual {p0, v0}, Lcom/example/rederdemo/SafetyActivity;->setContentView(I)V

    # Inicializar valores
    const/4 v0, 0x0
    iput-boolean v0, p0, Lcom/example/rederdemo/SafetyActivity;->isAlertActive:Z
    iput v0, p0, Lcom/example/rederdemo/SafetyActivity;->detectionCount:I

    # rssiThreshold por defecto = -70
    const/16 v0, -0x46
    iput v0, p0, Lcom/example/rederdemo/SafetyActivity;->rssiThreshold:I

    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    iput-object v0, p0, Lcom/example/rederdemo/SafetyActivity;->logText:Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
    move-result-object v0
    new-instance v1, Landroid/os/Handler;
    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    iput-object v1, p0, Lcom/example/rederdemo/SafetyActivity;->handler:Landroid/os/Handler;

    invoke-static {}, Lcom/example/rederdemo/util/GlobalClient;->getClient()Lcom/gg/reader/api/dal/GClient;
    move-result-object v0
    iput-object v0, p0, Lcom/example/rederdemo/SafetyActivity;->client:Lcom/gg/reader/api/dal/GClient;

    const-string v0, "vibrator"
    invoke-virtual {p0, v0}, Lcom/example/rederdemo/SafetyActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
    if-eqz v0, :no_vib
    check-cast v0, Landroid/os/Vibrator;
    iput-object v0, p0, Lcom/example/rederdemo/SafetyActivity;->vibrator:Landroid/os/Vibrator;
    :no_vib

    # Cachear vistas
    const v0, 0x7f0901da
    invoke-virtual {p0, v0}, Lcom/example/rederdemo/SafetyActivity;->findViewById(I)Landroid/view/View;
    move-result-object v0
    iput-object v0, p0, Lcom/example/rederdemo/SafetyActivity;->vRoot:Landroid/view/View;

    const v0, 0x7f0901db
    invoke-virtual {p0, v0}, Lcom/example/rederdemo/SafetyActivity;->findViewById(I)Landroid/view/View;
    move-result-object v0
    if-eqz v0, :skip_status
    check-cast v0, Landroid/widget/TextView;
    iput-object v0, p0, Lcom/example/rederdemo/SafetyActivity;->tvStatus:Landroid/widget/TextView;
    :skip_status

    const v0, 0x7f0901dc
    invoke-virtual {p0, v0}, Lcom/example/rederdemo/SafetyActivity;->findViewById(I)Landroid/view/View;
    move-result-object v0
    if-eqz v0, :skip_epc
    check-cast v0, Landroid/widget/TextView;
    iput-object v0, p0, Lcom/example/rederdemo/SafetyActivity;->tvEpc:Landroid/widget/TextView;
    :skip_epc

    const v0, 0x7f0901dd
    invoke-virtual {p0, v0}, Lcom/example/rederdemo/SafetyActivity;->findViewById(I)Landroid/view/View;
    move-result-object v0
    if-eqz v0, :skip_rssi
    check-cast v0, Landroid/widget/TextView;
    iput-object v0, p0, Lcom/example/rederdemo/SafetyActivity;->tvRssi:Landroid/widget/TextView;
    :skip_rssi

    const v0, 0x7f0901de
    invoke-virtual {p0, v0}, Lcom/example/rederdemo/SafetyActivity;->findViewById(I)Landroid/view/View;
    move-result-object v0
    if-eqz v0, :skip_count
    check-cast v0, Landroid/widget/TextView;
    iput-object v0, p0, Lcom/example/rederdemo/SafetyActivity;->tvCount:Landroid/widget/TextView;
    :skip_count

    const v0, 0x7f0901df
    invoke-virtual {p0, v0}, Lcom/example/rederdemo/SafetyActivity;->findViewById(I)Landroid/view/View;
    move-result-object v0
    if-eqz v0, :skip_log
    check-cast v0, Landroid/widget/TextView;
    iput-object v0, p0, Lcom/example/rederdemo/SafetyActivity;->tvLog:Landroid/widget/TextView;
    :skip_log

    # EditText RSSI = 0x7f0901e4
    const v0, 0x7f0901e4
    invoke-virtual {p0, v0}, Lcom/example/rederdemo/SafetyActivity;->findViewById(I)Landroid/view/View;
    move-result-object v0
    if-eqz v0, :skip_et
    check-cast v0, Landroid/widget/EditText;
    iput-object v0, p0, Lcom/example/rederdemo/SafetyActivity;->etRssi:Landroid/widget/EditText;
    :skip_et

    # Botón CONFIRMAR = 0x7f0901e0
    const v0, 0x7f0901e0
    invoke-virtual {p0, v0}, Lcom/example/rederdemo/SafetyActivity;->findViewById(I)Landroid/view/View;
    move-result-object v0
    if-eqz v0, :skip_confirm
    check-cast v0, Landroid/widget/Button;
    iput-object v0, p0, Lcom/example/rederdemo/SafetyActivity;->btnConfirm:Landroid/widget/Button;
    new-instance v1, Lcom/example/rederdemo/SafetyActivity$2;
    invoke-direct {v1, p0}, Lcom/example/rederdemo/SafetyActivity$2;-><init>(Lcom/example/rederdemo/SafetyActivity;)V
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :skip_confirm

    # Botón Aplicar RSSI = 0x7f0901e5
    const v0, 0x7f0901e5
    invoke-virtual {p0, v0}, Lcom/example/rederdemo/SafetyActivity;->findViewById(I)Landroid/view/View;
    move-result-object v0
    if-eqz v0, :skip_apply
    new-instance v1, Lcom/example/rederdemo/SafetyActivity$7;
    invoke-direct {v1, p0}, Lcom/example/rederdemo/SafetyActivity$7;-><init>(Lcom/example/rederdemo/SafetyActivity;)V
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :skip_apply

    # Botón VOLVER = 0x7f0901e1
    const v0, 0x7f0901e1
    invoke-virtual {p0, v0}, Lcom/example/rederdemo/SafetyActivity;->findViewById(I)Landroid/view/View;
    move-result-object v0
    if-eqz v0, :skip_back
    new-instance v1, Lcom/example/rederdemo/SafetyActivity$3;
    invoke-direct {v1, p0}, Lcom/example/rederdemo/SafetyActivity$3;-><init>(Lcom/example/rederdemo/SafetyActivity;)V
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :skip_back

    invoke-direct {p0}, Lcom/example/rederdemo/SafetyActivity;->showZoneFree()V

    # Iniciar RFID en background
    new-instance v0, Lcom/example/rederdemo/SafetyActivity$1;
    invoke-direct {v0, p0}, Lcom/example/rederdemo/SafetyActivity$1;-><init>(Lcom/example/rederdemo/SafetyActivity;)V
    new-instance v1, Ljava/lang/Thread;
    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

# ── applyRssiThreshold ────────────────────────────────────────
.method public applyRssiThreshold()V
    .locals 3
    iget-object v0, p0, Lcom/example/rederdemo/SafetyActivity;->etRssi:Landroid/widget/EditText;
    if-eqz v0, :done
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
    move-result-object v0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    move-result-object v0
    :try_start
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v1
    # Limitar entre -100 y -20
    const/16 v2, -0x64
    if-gt v1, v2, :check_max
    move v1, v2
    :check_max
    const/16 v2, -0x14
    if-lt v1, v2, :save
    move v1, v2
    :save
    iput v1, p0, Lcom/example/rederdemo/SafetyActivity;->rssiThreshold:I
    # Mostrar toast de confirmación
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Umbral aplicado: "
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v2, " dBm"
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const/4 v1, 0x0
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v0
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end
    .catch Ljava/lang/NumberFormatException; {:try_start .. :try_end} :bad_val
    goto :done
    :bad_val
    const-string v0, "Valor invalido. Usa p.ej. -70"
    const/4 v1, 0x0
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v0
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :done
    return-void
.end method

# ── startRfidScan ─────────────────────────────────────────────
.method public startRfidScan()V
    .locals 4
    :try_start
    iget-object v0, p0, Lcom/example/rederdemo/SafetyActivity;->client:Lcom/gg/reader/api/dal/GClient;
    if-eqz v0, :done
    new-instance v1, Lcom/example/rederdemo/SafetyActivity$4;
    invoke-direct {v1, p0}, Lcom/example/rederdemo/SafetyActivity$4;-><init>(Lcom/example/rederdemo/SafetyActivity;)V
    iput-object v1, v0, Lcom/gg/reader/api/dal/GClient;->onTagEpcLog:Lcom/gg/reader/api/dal/HandlerTagEpcLog;
    new-instance v1, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;
    invoke-direct {v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;-><init>()V
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V
    new-instance v1, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;
    invoke-direct {v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;-><init>()V
    const/4 v2, 0x1
    invoke-virtual {v1, v2}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setInventoryMode(I)V
    const-wide/16 v2, 0x1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v2
    invoke-virtual {v1, v2}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setAntennaEnable(Ljava/lang/Long;)V
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V
    :try_end
    .catch Ljava/lang/Throwable; {:try_start .. :try_end} :catch
    :catch
    :done
    return-void
.end method

# ── onTagDetected ─────────────────────────────────────────────
.method public onTagDetected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    # Parsear RSSI a int para comparar con umbral
    # Sin try-catch: si falla parseInt usamos valor por defecto
    const/16 v0, -0x46
    if-eqz p2, :compare
    :try_parse_start
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v0
    :try_parse_end
    .catch Ljava/lang/NumberFormatException; {:try_parse_start .. :try_parse_end} :parse_fail
    goto :compare
    :parse_fail
    const/16 v0, -0x46
    :compare

    # Si RSSI < umbral, la etiqueta está demasiado lejos → solo log
    iget v1, p0, Lcom/example/rederdemo/SafetyActivity;->rssiThreshold:I
    if-lt v0, v1, :just_log

    # Añadir al log siempre que supere el umbral
    invoke-direct {p0, p1, p2}, Lcom/example/rederdemo/SafetyActivity;->addToLog(Ljava/lang/String;Ljava/lang/String;)V

    # Si ya hay alerta activa, no volver a activar
    iget-boolean v0, p0, Lcom/example/rederdemo/SafetyActivity;->isAlertActive:Z
    if-nez v0, :done

    const/4 v0, 0x1
    iput-boolean v0, p0, Lcom/example/rederdemo/SafetyActivity;->isAlertActive:Z

    iget v0, p0, Lcom/example/rederdemo/SafetyActivity;->detectionCount:I
    add-int/lit8 v0, v0, 0x1
    iput v0, p0, Lcom/example/rederdemo/SafetyActivity;->detectionCount:I

    invoke-direct {p0}, Lcom/example/rederdemo/SafetyActivity;->showZoneDanger()V
    invoke-direct {p0, p1, p2}, Lcom/example/rederdemo/SafetyActivity;->updateEpcRssi(Ljava/lang/String;Ljava/lang/String;)V
    invoke-direct {p0}, Lcom/example/rederdemo/SafetyActivity;->updateCount()V

    iget-object v0, p0, Lcom/example/rederdemo/SafetyActivity;->btnConfirm:Landroid/widget/Button;
    if-eqz v0, :skip_btn
    const/4 v1, 0x0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V
    :skip_btn

    invoke-direct {p0}, Lcom/example/rederdemo/SafetyActivity;->vibrate()V
    invoke-direct {p0}, Lcom/example/rederdemo/SafetyActivity;->playAlert()V
    goto :done

    :just_log
    :done
    return-void
.end method

# ── showZoneFree ──────────────────────────────────────────────
.method private showZoneFree()V
    .locals 2
    iget-object v0, p0, Lcom/example/rederdemo/SafetyActivity;->vRoot:Landroid/view/View;
    if-eqz v0, :s1
    const v1, 0xFF4CAF50
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V
    :s1
    iget-object v0, p0, Lcom/example/rederdemo/SafetyActivity;->tvStatus:Landroid/widget/TextView;
    if-eqz v0, :s2
    const-string v1, "\u2705 ZONA LIBRE"
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :s2
    iget-object v0, p0, Lcom/example/rederdemo/SafetyActivity;->tvEpc:Landroid/widget/TextView;
    if-eqz v0, :s3
    const-string v1, ""
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :s3
    iget-object v0, p0, Lcom/example/rederdemo/SafetyActivity;->tvRssi:Landroid/widget/TextView;
    if-eqz v0, :done
    const-string v1, ""
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :done
    return-void
.end method

# ── showZoneDanger ────────────────────────────────────────────
.method private showZoneDanger()V
    .locals 2
    iget-object v0, p0, Lcom/example/rederdemo/SafetyActivity;->vRoot:Landroid/view/View;
    if-eqz v0, :s1
    const v1, 0xFFF44336
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V
    :s1
    iget-object v0, p0, Lcom/example/rederdemo/SafetyActivity;->tvStatus:Landroid/widget/TextView;
    if-eqz v0, :done
    const-string v1, "\u26a0\ufe0f \u00a1PELIGRO!\nTRABAJADOR DETECTADO"
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :done
    return-void
.end method

# ── updateEpcRssi ─────────────────────────────────────────────
.method private updateEpcRssi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    iget-object v0, p0, Lcom/example/rederdemo/SafetyActivity;->tvEpc:Landroid/widget/TextView;
    if-eqz v0, :skip_epc
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "EPC: "
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :skip_epc
    iget-object v0, p0, Lcom/example/rederdemo/SafetyActivity;->tvRssi:Landroid/widget/TextView;
    if-eqz v0, :done
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "RSSI: "
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v2, " dBm"
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :done
    return-void
.end method

# ── updateCount ───────────────────────────────────────────────
.method private updateCount()V
    .locals 3
    iget-object v0, p0, Lcom/example/rederdemo/SafetyActivity;->tvCount:Landroid/widget/TextView;
    if-eqz v0, :done
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Detecciones: "
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v2, p0, Lcom/example/rederdemo/SafetyActivity;->detectionCount:I
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :done
    return-void
.end method

# ── addToLog ──────────────────────────────────────────────────
.method private addToLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    new-instance v0, Ljava/text/SimpleDateFormat;
    const-string v1, "HH:mm:ss"
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    new-instance v1, Ljava/util/Date;
    invoke-direct {v1}, Ljava/util/Date;-><init>()V
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    move-result-object v0

    iget-object v1, p0, Lcom/example/rederdemo/SafetyActivity;->logText:Ljava/lang/StringBuilder;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v2, " EPC:"
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v2, " RSSI:"
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v2, " dBm\n"
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # Actualizar TextView
    iget-object v0, p0, Lcom/example/rederdemo/SafetyActivity;->tvLog:Landroid/widget/TextView;
    if-eqz v0, :write_file
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    # Escribir línea al fichero
    :write_file
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-direct {p0, v2}, Lcom/example/rederdemo/SafetyActivity;->writeLogToFile(Ljava/lang/String;)V
    return-void
.end method

# ── writeLogToFile ────────────────────────────────────────────
.method private writeLogToFile(Ljava/lang/String;)V
    .locals 5
    :try_start
    const/4 v0, 0x0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;
    move-result-object v0
    if-eqz v0, :done

    const-string v1, "safety_pista_log.txt"
    new-instance v2, Ljava/io/File;
    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v3, 0x1
    new-instance v4, Ljava/io/FileWriter;
    invoke-direct {v4, v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-virtual {v4, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end
    .catch Ljava/lang/Exception; {:try_start .. :try_end} :catch
    :catch
    :done
    return-void
.end method

# ── vibrate ───────────────────────────────────────────────────
.method private vibrate()V
    .locals 5
    iget-object v0, p0, Lcom/example/rederdemo/SafetyActivity;->vibrator:Landroid/os/Vibrator;
    if-eqz v0, :done

    # Patrón: 0ms espera, 300ms on, 100ms off, 300ms on, 100ms off, 500ms on
    const/4 v1, 0x6
    new-array v1, v1, [J

    const-wide/16 v2, 0x0
    const/4 v4, 0x0
    aput-wide v2, v1, v4

    const-wide/16 v2, 0x12C
    const/4 v4, 0x1
    aput-wide v2, v1, v4

    const-wide/16 v2, 0x64
    const/4 v4, 0x2
    aput-wide v2, v1, v4

    const-wide/16 v2, 0x12C
    const/4 v4, 0x3
    aput-wide v2, v1, v4

    const-wide/16 v2, 0x64
    const/4 v4, 0x4
    aput-wide v2, v1, v4

    const-wide/16 v2, 0x1F4
    const/4 v4, 0x5
    aput-wide v2, v1, v4

    # Usar VibrationEffect para Android 8+ (API 26+)
    const/4 v2, -0x1
    invoke-static {v1, v2}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;
    move-result-object v1
    invoke-virtual {v0, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V
    :done
    return-void
.end method

# ── playAlert ─────────────────────────────────────────────────
.method private playAlert()V
    .locals 3
    :try_start
    # AudioManager.STREAM_ALARM = 4, volume 100%
    const/4 v0, 0x4
    const/16 v1, 0x64
    new-instance v2, Landroid/media/ToneGenerator;
    invoke-direct {v2, v0, v1}, Landroid/media/ToneGenerator;-><init>(II)V
    # TONE_CDMA_ALERT_CALL_GUARD = 50, duración 2000ms
    const/16 v0, 0x32
    const/16 v1, 0x7D0
    invoke-virtual {v2, v0, v1}, Landroid/media/ToneGenerator;->startTone(II)Z
    :try_end
    .catch Ljava/lang/Exception; {:try_start .. :try_end} :catch
    :catch
    return-void
.end method

# ── confirmSafe ───────────────────────────────────────────────
.method public confirmSafe()V
    .locals 2
    const/4 v0, 0x0
    iput-boolean v0, p0, Lcom/example/rederdemo/SafetyActivity;->isAlertActive:Z
    iget-object v0, p0, Lcom/example/rederdemo/SafetyActivity;->vibrator:Landroid/os/Vibrator;
    if-eqz v0, :no_vib
    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V
    :no_vib
    iget-object v0, p0, Lcom/example/rederdemo/SafetyActivity;->btnConfirm:Landroid/widget/Button;
    if-eqz v0, :no_btn
    const/16 v1, 0x8
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V
    :no_btn
    invoke-direct {p0}, Lcom/example/rederdemo/SafetyActivity;->showZoneFree()V
    return-void
.end method

# ── onDestroy ─────────────────────────────────────────────────
.method protected onDestroy()V
    .locals 2
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V
    iget-object v0, p0, Lcom/example/rederdemo/SafetyActivity;->client:Lcom/gg/reader/api/dal/GClient;
    if-eqz v0, :no_client
    const/4 v1, 0x0
    iput-object v1, v0, Lcom/gg/reader/api/dal/GClient;->onTagEpcLog:Lcom/gg/reader/api/dal/HandlerTagEpcLog;
    new-instance v1, Lcom/example/rederdemo/SafetyActivity$5;
    invoke-direct {v1, p0}, Lcom/example/rederdemo/SafetyActivity$5;-><init>(Lcom/example/rederdemo/SafetyActivity;)V
    new-instance v0, Ljava/lang/Thread;
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :no_client
    iget-object v0, p0, Lcom/example/rederdemo/SafetyActivity;->vibrator:Landroid/os/Vibrator;
    if-eqz v0, :no_vib
    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V
    :no_vib
    return-void
.end method

# ── Accessors para inner classes ──────────────────────────────
.method static synthetic access$client(Lcom/example/rederdemo/SafetyActivity;)Lcom/gg/reader/api/dal/GClient;
    .locals 0
    iget-object p0, p0, Lcom/example/rederdemo/SafetyActivity;->client:Lcom/gg/reader/api/dal/GClient;
    return-object p0
.end method

.method static synthetic access$handler(Lcom/example/rederdemo/SafetyActivity;)Landroid/os/Handler;
    .locals 0
    iget-object p0, p0, Lcom/example/rederdemo/SafetyActivity;->handler:Landroid/os/Handler;
    return-object p0
.end method
