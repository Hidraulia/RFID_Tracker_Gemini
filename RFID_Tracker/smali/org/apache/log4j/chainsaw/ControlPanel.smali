.class Lorg/apache/log4j/chainsaw/ControlPanel;
.super Ljavax/swing/JPanel;
.source "ControlPanel.java"


# static fields
.field private static final LOG:Lorg/apache/log4j/Logger;

.field static synthetic class$org$apache$log4j$chainsaw$ControlPanel:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    sget-object v0, Lorg/apache/log4j/chainsaw/ControlPanel;->class$org$apache$log4j$chainsaw$ControlPanel:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.log4j.chainsaw.ControlPanel"

    invoke-static {v0}, Lorg/apache/log4j/chainsaw/ControlPanel;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/chainsaw/ControlPanel;->class$org$apache$log4j$chainsaw$ControlPanel:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/chainsaw/ControlPanel;->LOG:Lorg/apache/log4j/Logger;

    return-void
.end method

.method constructor <init>(Lorg/apache/log4j/chainsaw/MyTableModel;)V
    .locals 11

    .line 49
    invoke-direct {p0}, Ljavax/swing/JPanel;-><init>()V

    const-string v0, "Controls: "

    .line 50
    invoke-static {v0}, Ljavax/swing/BorderFactory;->createTitledBorder(Ljava/lang/String;)Ljavax/swing/border/TitledBorder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/swing/JComponent;->setBorder(Ljavax/swing/border/Border;)V

    .line 51
    new-instance v0, Ljava/awt/GridBagLayout;

    invoke-direct {v0}, Ljava/awt/GridBagLayout;-><init>()V

    .line 52
    new-instance v1, Ljava/awt/GridBagConstraints;

    invoke-direct {v1}, Ljava/awt/GridBagConstraints;-><init>()V

    .line 53
    invoke-virtual {p0, v0}, Ljava/awt/Container;->setLayout(Ljava/awt/LayoutManager;)V

    const/4 v2, 0x5

    .line 56
    iput v2, v1, Ljava/awt/GridBagConstraints;->ipadx:I

    .line 57
    iput v2, v1, Ljava/awt/GridBagConstraints;->ipady:I

    const/4 v3, 0x0

    .line 60
    iput v3, v1, Ljava/awt/GridBagConstraints;->gridx:I

    const/16 v4, 0xd

    .line 61
    iput v4, v1, Ljava/awt/GridBagConstraints;->anchor:I

    .line 63
    iput v3, v1, Ljava/awt/GridBagConstraints;->gridy:I

    .line 64
    new-instance v5, Ljavax/swing/JLabel;

    const-string v6, "Filter Level:"

    invoke-direct {v5, v6}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0, v5, v1}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 66
    invoke-virtual {p0, v5}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 68
    iget v5, v1, Ljava/awt/GridBagConstraints;->gridy:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, v1, Ljava/awt/GridBagConstraints;->gridy:I

    .line 69
    new-instance v5, Ljavax/swing/JLabel;

    const-string v7, "Filter Thread:"

    invoke-direct {v5, v7}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0, v5, v1}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 71
    invoke-virtual {p0, v5}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 73
    iget v5, v1, Ljava/awt/GridBagConstraints;->gridy:I

    add-int/2addr v5, v6

    iput v5, v1, Ljava/awt/GridBagConstraints;->gridy:I

    .line 74
    new-instance v5, Ljavax/swing/JLabel;

    const-string v7, "Filter Logger:"

    invoke-direct {v5, v7}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0, v5, v1}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 76
    invoke-virtual {p0, v5}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 78
    iget v5, v1, Ljava/awt/GridBagConstraints;->gridy:I

    add-int/2addr v5, v6

    iput v5, v1, Ljava/awt/GridBagConstraints;->gridy:I

    .line 79
    new-instance v5, Ljavax/swing/JLabel;

    const-string v7, "Filter NDC:"

    invoke-direct {v5, v7}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0, v5, v1}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 81
    invoke-virtual {p0, v5}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 83
    iget v5, v1, Ljava/awt/GridBagConstraints;->gridy:I

    add-int/2addr v5, v6

    iput v5, v1, Ljava/awt/GridBagConstraints;->gridy:I

    .line 84
    new-instance v5, Ljavax/swing/JLabel;

    const-string v7, "Filter Message:"

    invoke-direct {v5, v7}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0, v5, v1}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 86
    invoke-virtual {p0, v5}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 89
    iput-wide v7, v1, Ljava/awt/GridBagConstraints;->weightx:D

    .line 91
    iput v6, v1, Ljava/awt/GridBagConstraints;->gridx:I

    const/16 v5, 0x11

    .line 92
    iput v5, v1, Ljava/awt/GridBagConstraints;->anchor:I

    .line 94
    iput v3, v1, Ljava/awt/GridBagConstraints;->gridy:I

    const/4 v5, 0x6

    new-array v5, v5, [Lorg/apache/log4j/Level;

    .line 95
    sget-object v7, Lorg/apache/log4j/Level;->FATAL:Lorg/apache/log4j/Level;

    aput-object v7, v5, v3

    sget-object v7, Lorg/apache/log4j/Level;->ERROR:Lorg/apache/log4j/Level;

    aput-object v7, v5, v6

    sget-object v7, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    const/4 v8, 0x2

    aput-object v7, v5, v8

    sget-object v7, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    const/4 v9, 0x3

    aput-object v7, v5, v9

    sget-object v7, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    const/4 v9, 0x4

    aput-object v7, v5, v9

    sget-object v7, Lorg/apache/log4j/Level;->TRACE:Lorg/apache/log4j/Level;

    aput-object v7, v5, v2

    .line 102
    new-instance v7, Ljavax/swing/JComboBox;

    invoke-direct {v7, v5}, Ljavax/swing/JComboBox;-><init>([Ljava/lang/Object;)V

    .line 103
    aget-object v2, v5, v2

    .line 104
    invoke-virtual {v7, v2}, Ljavax/swing/JComboBox;->setSelectedItem(Ljava/lang/Object;)V

    .line 105
    invoke-virtual {p1, v2}, Lorg/apache/log4j/chainsaw/MyTableModel;->setPriorityFilter(Lorg/apache/log4j/Priority;)V

    .line 106
    invoke-virtual {v0, v7, v1}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 107
    invoke-virtual {p0, v7}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 108
    invoke-virtual {v7, v3}, Ljavax/swing/JComboBox;->setEditable(Z)V

    .line 109
    new-instance v2, Lorg/apache/log4j/chainsaw/ControlPanel$1;

    invoke-direct {v2, p0, p1, v7}, Lorg/apache/log4j/chainsaw/ControlPanel$1;-><init>(Lorg/apache/log4j/chainsaw/ControlPanel;Lorg/apache/log4j/chainsaw/MyTableModel;Ljavax/swing/JComboBox;)V

    invoke-virtual {v7, v2}, Ljavax/swing/JComboBox;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 117
    iput v8, v1, Ljava/awt/GridBagConstraints;->fill:I

    .line 118
    iget v2, v1, Ljava/awt/GridBagConstraints;->gridy:I

    add-int/2addr v2, v6

    iput v2, v1, Ljava/awt/GridBagConstraints;->gridy:I

    .line 119
    new-instance v2, Ljavax/swing/JTextField;

    const-string v5, ""

    invoke-direct {v2, v5}, Ljavax/swing/JTextField;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v2}, Ljavax/swing/text/JTextComponent;->getDocument()Ljavax/swing/text/Document;

    move-result-object v7

    new-instance v9, Lorg/apache/log4j/chainsaw/ControlPanel$2;

    invoke-direct {v9, p0, p1, v2}, Lorg/apache/log4j/chainsaw/ControlPanel$2;-><init>(Lorg/apache/log4j/chainsaw/ControlPanel;Lorg/apache/log4j/chainsaw/MyTableModel;Ljavax/swing/JTextField;)V

    invoke-interface {v7, v9}, Ljavax/swing/text/Document;->addDocumentListener(Ljavax/swing/event/DocumentListener;)V

    .line 131
    invoke-virtual {v0, v2, v1}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 132
    invoke-virtual {p0, v2}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 134
    iget v2, v1, Ljava/awt/GridBagConstraints;->gridy:I

    add-int/2addr v2, v6

    iput v2, v1, Ljava/awt/GridBagConstraints;->gridy:I

    .line 135
    new-instance v2, Ljavax/swing/JTextField;

    invoke-direct {v2, v5}, Ljavax/swing/JTextField;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v2}, Ljavax/swing/text/JTextComponent;->getDocument()Ljavax/swing/text/Document;

    move-result-object v7

    new-instance v9, Lorg/apache/log4j/chainsaw/ControlPanel$3;

    invoke-direct {v9, p0, p1, v2}, Lorg/apache/log4j/chainsaw/ControlPanel$3;-><init>(Lorg/apache/log4j/chainsaw/ControlPanel;Lorg/apache/log4j/chainsaw/MyTableModel;Ljavax/swing/JTextField;)V

    invoke-interface {v7, v9}, Ljavax/swing/text/Document;->addDocumentListener(Ljavax/swing/event/DocumentListener;)V

    .line 147
    invoke-virtual {v0, v2, v1}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 148
    invoke-virtual {p0, v2}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 150
    iget v2, v1, Ljava/awt/GridBagConstraints;->gridy:I

    add-int/2addr v2, v6

    iput v2, v1, Ljava/awt/GridBagConstraints;->gridy:I

    .line 151
    new-instance v2, Ljavax/swing/JTextField;

    invoke-direct {v2, v5}, Ljavax/swing/JTextField;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v2}, Ljavax/swing/text/JTextComponent;->getDocument()Ljavax/swing/text/Document;

    move-result-object v7

    new-instance v9, Lorg/apache/log4j/chainsaw/ControlPanel$4;

    invoke-direct {v9, p0, p1, v2}, Lorg/apache/log4j/chainsaw/ControlPanel$4;-><init>(Lorg/apache/log4j/chainsaw/ControlPanel;Lorg/apache/log4j/chainsaw/MyTableModel;Ljavax/swing/JTextField;)V

    invoke-interface {v7, v9}, Ljavax/swing/text/Document;->addDocumentListener(Ljavax/swing/event/DocumentListener;)V

    .line 163
    invoke-virtual {v0, v2, v1}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 164
    invoke-virtual {p0, v2}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 166
    iget v2, v1, Ljava/awt/GridBagConstraints;->gridy:I

    add-int/2addr v2, v6

    iput v2, v1, Ljava/awt/GridBagConstraints;->gridy:I

    .line 167
    new-instance v2, Ljavax/swing/JTextField;

    invoke-direct {v2, v5}, Ljavax/swing/JTextField;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v2}, Ljavax/swing/text/JTextComponent;->getDocument()Ljavax/swing/text/Document;

    move-result-object v5

    new-instance v7, Lorg/apache/log4j/chainsaw/ControlPanel$5;

    invoke-direct {v7, p0, p1, v2}, Lorg/apache/log4j/chainsaw/ControlPanel$5;-><init>(Lorg/apache/log4j/chainsaw/ControlPanel;Lorg/apache/log4j/chainsaw/MyTableModel;Ljavax/swing/JTextField;)V

    invoke-interface {v5, v7}, Ljavax/swing/text/Document;->addDocumentListener(Ljavax/swing/event/DocumentListener;)V

    .line 181
    invoke-virtual {v0, v2, v1}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 182
    invoke-virtual {p0, v2}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    const-wide/16 v9, 0x0

    .line 185
    iput-wide v9, v1, Ljava/awt/GridBagConstraints;->weightx:D

    .line 186
    iput v8, v1, Ljava/awt/GridBagConstraints;->fill:I

    .line 187
    iput v4, v1, Ljava/awt/GridBagConstraints;->anchor:I

    .line 188
    iput v8, v1, Ljava/awt/GridBagConstraints;->gridx:I

    .line 190
    iput v3, v1, Ljava/awt/GridBagConstraints;->gridy:I

    .line 191
    new-instance v2, Ljavax/swing/JButton;

    const-string v3, "Exit"

    invoke-direct {v2, v3}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x78

    .line 192
    invoke-virtual {v2, v3}, Ljavax/swing/AbstractButton;->setMnemonic(C)V

    .line 193
    sget-object v3, Lorg/apache/log4j/chainsaw/ExitAction;->INSTANCE:Lorg/apache/log4j/chainsaw/ExitAction;

    invoke-virtual {v2, v3}, Ljavax/swing/AbstractButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 194
    invoke-virtual {v0, v2, v1}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 195
    invoke-virtual {p0, v2}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 197
    iget v2, v1, Ljava/awt/GridBagConstraints;->gridy:I

    add-int/2addr v2, v6

    iput v2, v1, Ljava/awt/GridBagConstraints;->gridy:I

    .line 198
    new-instance v2, Ljavax/swing/JButton;

    const-string v3, "Clear"

    invoke-direct {v2, v3}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x63

    .line 199
    invoke-virtual {v2, v3}, Ljavax/swing/AbstractButton;->setMnemonic(C)V

    .line 200
    new-instance v3, Lorg/apache/log4j/chainsaw/ControlPanel$6;

    invoke-direct {v3, p0, p1}, Lorg/apache/log4j/chainsaw/ControlPanel$6;-><init>(Lorg/apache/log4j/chainsaw/ControlPanel;Lorg/apache/log4j/chainsaw/MyTableModel;)V

    invoke-virtual {v2, v3}, Ljavax/swing/AbstractButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 205
    invoke-virtual {v0, v2, v1}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 206
    invoke-virtual {p0, v2}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 208
    iget v2, v1, Ljava/awt/GridBagConstraints;->gridy:I

    add-int/2addr v2, v6

    iput v2, v1, Ljava/awt/GridBagConstraints;->gridy:I

    .line 209
    new-instance v2, Ljavax/swing/JButton;

    const-string v3, "Pause"

    invoke-direct {v2, v3}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x70

    .line 210
    invoke-virtual {v2, v3}, Ljavax/swing/AbstractButton;->setMnemonic(C)V

    .line 211
    new-instance v3, Lorg/apache/log4j/chainsaw/ControlPanel$7;

    invoke-direct {v3, p0, p1, v2}, Lorg/apache/log4j/chainsaw/ControlPanel$7;-><init>(Lorg/apache/log4j/chainsaw/ControlPanel;Lorg/apache/log4j/chainsaw/MyTableModel;Ljavax/swing/JButton;)V

    invoke-virtual {v2, v3}, Ljavax/swing/AbstractButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 218
    invoke-virtual {v0, v2, v1}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 219
    invoke-virtual {p0, v2}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 39
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0
.end method
