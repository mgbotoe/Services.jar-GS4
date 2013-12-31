.class public Lcom/android/server/BluetoothManagerService$BufferLog;
.super Ljava/lang/Object;
.source "BluetoothManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BluetoothManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BufferLog"
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field day:Ljava/lang/String;

.field hour:Ljava/lang/String;

.field private isBufferUsed:Z

.field private limit:I

.field private lineFeed:Ljava/lang/String;

.field private mainBuffer:Ljava/lang/String;

.field min:Ljava/lang/String;

.field month:Ljava/lang/String;

.field sec:Ljava/lang/String;

.field private stringlength:I

.field private subBuffer:Ljava/lang/StringBuilder;

.field private sysdump_time:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/BluetoothManagerService;)V
    .registers 4

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$BufferLog;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AClogs"

    iput-object v0, p0, Lcom/android/server/BluetoothManagerService$BufferLog;->LOG_TAG:Ljava/lang/String;

    iput v1, p0, Lcom/android/server/BluetoothManagerService$BufferLog;->stringlength:I

    const/high16 v0, 0x4

    iput v0, p0, Lcom/android/server/BluetoothManagerService$BufferLog;->limit:I

    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService$BufferLog;->isBufferUsed:Z

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/android/server/BluetoothManagerService$BufferLog;->mainBuffer:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/BluetoothManagerService$BufferLog;->subBuffer:Ljava/lang/StringBuilder;

    const-string v0, "\n"

    iput-object v0, p0, Lcom/android/server/BluetoothManagerService$BufferLog;->lineFeed:Ljava/lang/String;

    const-string v0, "AClogs"

    const-string v1, "In constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/BluetoothManagerService$BufferLog;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$BufferLog;->mainBuffer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/BluetoothManagerService$BufferLog;)Ljava/lang/StringBuilder;
    .registers 2

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$BufferLog;->subBuffer:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method private getTimeToString()Ljava/lang/String;
    .registers 5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "00"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v3}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/BluetoothManagerService$BufferLog;->month:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/BluetoothManagerService$BufferLog;->day:Ljava/lang/String;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/BluetoothManagerService$BufferLog;->hour:Ljava/lang/String;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/BluetoothManagerService$BufferLog;->min:Ljava/lang/String;

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/BluetoothManagerService$BufferLog;->sec:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$BufferLog;->month:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$BufferLog;->day:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$BufferLog;->hour:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$BufferLog;->min:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$BufferLog;->sec:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/BluetoothManagerService$BufferLog;->sysdump_time:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$BufferLog;->sysdump_time:Ljava/lang/String;

    return-object v2
.end method


# virtual methods
.method public bufferLimitReached()Z
    .registers 3

    const-string v0, "AClogs"

    const-string v1, "In bufferLimitReached"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$BufferLog;->subBuffer:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    iput-object v0, p0, Lcom/android/server/BluetoothManagerService$BufferLog;->mainBuffer:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/BluetoothManagerService$BufferLog;->subBuffer:Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    return v0
.end method

.method public putLogs(Ljava/lang/String;)V
    .registers 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService$BufferLog;->getTimeToString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$BufferLog;->lineFeed:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$BufferLog;->subBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/BluetoothManagerService$BufferLog;->limit:I

    if-le v1, v2, :cond_2b

    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService$BufferLog;->bufferLimitReached()Z

    :cond_2b
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$BufferLog;->subBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return-void
.end method
