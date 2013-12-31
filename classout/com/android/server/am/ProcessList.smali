.class Lcom/android/server/am/ProcessList;
.super Ljava/lang/Object;
.source "ProcessList.java"


# static fields
.field static final BACKUP_APP_ADJ:I = 0x4

.field static final CONTENT_APP_IDLE_OFFSET:J = 0x3a98L

.field static final DEBUG:Z = false

.field static DHA_INCREASE_THRESHOLD:J = 0x0L

.field static final DHA_MAX_MARGIN:J = 0x800000L

.field static final DHA_MIN_MARGIN:J = 0x400000L

.field static final EMPTY_APP_IDLE_OFFSET:J = 0x1d4c0L

.field static final FOREGROUND_APP_ADJ:I = 0x0

.field static final HEAVY_WEIGHT_APP_ADJ:I = 0x3

.field static final HIDDEN_APP_MAX_ADJ:I = 0xf

.field static HIDDEN_APP_MIN_ADJ:I = 0x0

.field static final HOME_APP_ADJ:I = 0x6

.field static final INIT_HIDDEN_APPS:I = 0x3c

.field static final MAX_EMPTY_TIME:J = 0x1b7740L

.field static final MAX_HIDDEN_APPS:I = 0x3c

.field static MID_HIDDEN_APPS_FOR_DHA:I = 0x0

.field static final MIN_CRASH_INTERVAL:I = 0xea60

.field static final MIN_HIDDEN_APPS:I = 0x2

.field static MIN_HIDDEN_APPS_FOR_DHA:I = 0x0

.field static final PAGE_SIZE:I = 0x1000

.field static final PERCEPTIBLE_APP_ADJ:I = 0x2

.field static final PERSISTENT_PROC_ADJ:I = -0xc

.field static final PREVIOUS_APP_ADJ:I = 0x7

.field static final SERVICE_ADJ:I = 0x5

.field static final SERVICE_B_ADJ:I = 0x8

.field static final SYSTEM_ADJ:I = -0x10

#the value of this static final field might be set in the static constructor
.field static final TOTAL_DEVICE_MEMORY:J = 0x0L

.field static final TRIM_CRITICAL_THRESHOLD:I = 0x3

.field static final TRIM_EMPTY_APPS:I = 0x3

.field static final TRIM_HIDDEN_APPS:I = 0x3

.field static final TRIM_LOW_THRESHOLD:I = 0x5

.field static final VISIBLE_APP_ADJ:I = 0x1

.field private static mInfo:Lcom/android/internal/util/MemInfoReader;

.field static mIsLowMemModel:Z


# instance fields
.field private mHaveDisplaySize:Z

.field private final mOomAdj:[I

.field private final mOomKillDepth:[I

.field private final mOomMinFree:[J

.field private final mOomMinFreeHigh:[J

.field private final mOomMinFreeLow:[J

.field private mSz2ndDHAThreshold:J

.field private mSzDHADefendThreshold:J

.field private mSzDHARate1:I

.field private mSzDHARate2:I

.field private mSzDHAStep1:I

.field private mSzDHAStep2:I

.field private mSzDHAThreshold:J

.field private mSzDHAThresholdRate:F

.field private mSzMidDHA:I

.field private mSzMidDHA2nd:I

.field private mSzMidDHA2ndStep:I

.field private mSzMidDHAStep:I

.field private mSzUpdateDHACount:I

.field private mSzUpdateDHAMaxCount:I

.field private final mTotalMemMb:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x9

    sput v0, Lcom/android/server/am/ProcessList;->HIDDEN_APP_MIN_ADJ:I

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-static {}, Lcom/android/server/am/ProcessList;->totalDeviceMemory()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const/4 v0, 0x6

    sput v0, Lcom/android/server/am/ProcessList;->MIN_HIDDEN_APPS_FOR_DHA:I

    const/16 v0, 0xf

    sput v0, Lcom/android/server/am/ProcessList;->MID_HIDDEN_APPS_FOR_DHA:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/ProcessList;->mIsLowMemModel:Z

    const-wide/32 v0, 0xa00000

    sput-wide v0, Lcom/android/server/am/ProcessList;->DHA_INCREASE_THRESHOLD:J

    return-void
.end method

.method constructor <init>()V
    .registers 9

    const/4 v2, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x3

    const/4 v5, 0x6

    const/4 v4, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-array v1, v5, [I

    aput v4, v1, v4

    aput v2, v1, v2

    aput v7, v1, v7

    const/4 v2, 0x4

    aput v2, v1, v6

    const/4 v2, 0x4

    sget v3, Lcom/android/server/am/ProcessList;->HIDDEN_APP_MIN_ADJ:I

    aput v3, v1, v2

    const/4 v2, 0x5

    const/16 v3, 0xf

    aput v3, v1, v2

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    new-array v1, v5, [J

    fill-array-data v1, :array_80

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[J

    new-array v1, v5, [J

    fill-array-data v1, :array_9c

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[J

    new-array v1, v5, [I

    fill-array-data v1, :array_b8

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomKillDepth:[I

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v1, v1

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    const-wide/32 v1, 0x2000000

    iput-wide v1, p0, Lcom/android/server/am/ProcessList;->mSzDHAThreshold:J

    const-wide/32 v1, 0x1000000

    iput-wide v1, p0, Lcom/android/server/am/ProcessList;->mSz2ndDHAThreshold:J

    const-wide/32 v1, 0x800000

    iput-wide v1, p0, Lcom/android/server/am/ProcessList;->mSzDHADefendThreshold:J

    iput v4, p0, Lcom/android/server/am/ProcessList;->mSzUpdateDHACount:I

    const/16 v1, 0xa

    iput v1, p0, Lcom/android/server/am/ProcessList;->mSzUpdateDHAMaxCount:I

    const/16 v1, 0x9

    iput v1, p0, Lcom/android/server/am/ProcessList;->mSzMidDHAStep:I

    iput v5, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2ndStep:I

    iget v1, p0, Lcom/android/server/am/ProcessList;->mSzMidDHAStep:I

    rsub-int/lit8 v1, v1, 0x3c

    iput v1, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    iget v1, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    iget v2, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2ndStep:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2nd:I

    iput v6, p0, Lcom/android/server/am/ProcessList;->mSzDHAStep1:I

    iput v6, p0, Lcom/android/server/am/ProcessList;->mSzDHAStep2:I

    iput v7, p0, Lcom/android/server/am/ProcessList;->mSzDHARate1:I

    iput v6, p0, Lcom/android/server/am/ProcessList;->mSzDHARate2:I

    const v1, 0x3fd9999a

    iput v1, p0, Lcom/android/server/am/ProcessList;->mSzDHAThresholdRate:F

    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    sget-wide v1, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    iput-wide v1, p0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    invoke-direct {p0, v4, v4, v4}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    return-void

    :array_80
    .array-data 0x8
        0x0t 0x20t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x30t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x40t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x60t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x70t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x80t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_9c
    .array-data 0x8
        0x0t 0xc0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0xf0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x20t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x50t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x80t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0xe0t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_b8
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static totalDeviceMemory()J
    .registers 4

    sget-object v0, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    sput-object v0, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    :cond_b
    sget-object v0, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    sget-object v0, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private updateOomLevels(IIZ)V
    .registers 30

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x12c

    sub-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-float v0, v0

    move/from16 v22, v0

    const v23, 0x44b54000

    div-float v20, v22, v23

    const v17, 0x25800

    const v15, 0x1fa400

    mul-int v22, p1, p2

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v22, v22, v23

    const v23, 0x1d4c00

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v19, v22, v23

    const/16 v22, 0x6

    move/from16 v0, v22

    new-array v14, v0, [J

    fill-array-data v14, :array_24c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    cmpl-float v22, v20, v19

    if-lez v22, :cond_e1

    move/from16 v18, v20

    :goto_50
    const/16 v22, 0x0

    cmpg-float v22, v18, v22

    if-gez v22, :cond_e5

    const/16 v18, 0x0

    :cond_58
    :goto_58
    const/4 v10, 0x0

    :goto_59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v10, v0, :cond_ef

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[J

    move-object/from16 v22, v0

    aget-wide v12, v22, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[J

    move-object/from16 v22, v0

    aget-wide v8, v22, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v22, v0

    long-to-float v0, v12

    move/from16 v23, v0

    sub-long v24, v8, v12

    move-wide/from16 v0, v24

    long-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, v18

    add-float v23, v23, v24

    move/from16 v0, v23

    float-to-long v0, v0

    move-wide/from16 v23, v0

    aput-wide v23, v22, v10

    if-lez v10, :cond_ac

    const/16 v22, 0x2c

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v22, 0x2c

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v22, 0x2c

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_ac
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v22, v0

    aget v22, v22, v10

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v22, v0

    aget-wide v22, v22, v10

    const-wide/16 v24, 0x400

    mul-long v22, v22, v24

    const-wide/16 v24, 0x1000

    div-long v22, v22, v24

    move-object/from16 v0, v16

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomKillDepth:[I

    move-object/from16 v22, v0

    aget v22, v22, v10

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_59

    :cond_e1
    move/from16 v18, v19

    goto/16 :goto_50

    :cond_e5
    const/high16 v22, 0x3f80

    cmpl-float v22, v18, v22

    if-lez v22, :cond_58

    const/high16 v18, 0x3f80

    goto/16 :goto_58

    :cond_ef
    if-eqz p3, :cond_11e

    const-string v22, "/sys/module/lowmemorykiller/parameters/adj"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ProcessList;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    const-string v22, "/sys/module/lowmemorykiller/parameters/minfree"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ProcessList;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    const-string v22, "/sys/module/lowmemorykiller/parameters/adj_killed_level"

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ProcessList;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11e
    const-string v22, "ro.sf.lcd_density"

    const-string v23, "empty"

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v22, "ro.build.characteristics"

    const-string v23, "smartphone"

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const/high16 v3, 0x4080

    :try_start_130
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const-string v22, "DHA"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "density is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    move-wide/from16 v22, v0

    int-to-long v0, v5

    move-wide/from16 v24, v0

    div-long v22, v22, v24
    :try_end_159
    .catch Ljava/lang/NumberFormatException; {:try_start_130 .. :try_end_159} :catch_1f9

    move-wide/from16 v0, v22

    long-to-float v3, v0

    :goto_15c
    const/high16 v22, 0x4080

    cmpg-float v22, v3, v22

    if-ltz v22, :cond_170

    const/high16 v22, 0x40e0

    cmpg-float v22, v3, v22

    if-gez v22, :cond_205

    const-string v22, "tablet"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_205

    :cond_170
    const/16 v22, 0x3

    sput v22, Lcom/android/server/am/ProcessList;->MIN_HIDDEN_APPS_FOR_DHA:I

    const/16 v22, 0xc

    sput v22, Lcom/android/server/am/ProcessList;->MID_HIDDEN_APPS_FOR_DHA:I

    const/16 v22, 0x6

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ProcessList;->mSzMidDHAStep:I

    const/16 v22, 0x6

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ProcessList;->mSzMidDHA2ndStep:I

    const/high16 v22, 0x4000

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ProcessList;->mSzDHAThresholdRate:F

    const/16 v22, 0x2

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ProcessList;->mSzDHAStep1:I

    const/16 v22, 0x2

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ProcessList;->mSzDHAStep2:I

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ProcessList;->mSzDHARate1:I

    const/16 v22, 0x2

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ProcessList;->mSzDHARate2:I

    const/16 v22, 0x1

    sput-boolean v22, Lcom/android/server/am/ProcessList;->mIsLowMemModel:Z

    :goto_1b4
    const/16 v22, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/ProcessList;->mSzDHAThreshold:J

    const/16 v22, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/ProcessList;->mSz2ndDHAThreshold:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[J

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-wide v22, v22, v23

    move-wide/from16 v0, v22

    long-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v18

    move/from16 v0, v22

    float-to-long v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/ProcessList;->mSzDHADefendThreshold:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/ProcessList;->mSzDHADefendThreshold:J

    move-wide/from16 v22, v0

    sput-wide v22, Lcom/android/server/am/ProcessList;->DHA_INCREASE_THRESHOLD:J

    return-void

    :catch_1f9
    move-exception v7

    const-string v22, "DHA"

    const-string v23, "densityS is invalid"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v3, 0x4080

    goto/16 :goto_15c

    :cond_205
    const/16 v22, 0x9

    sput v22, Lcom/android/server/am/ProcessList;->MIN_HIDDEN_APPS_FOR_DHA:I

    const/16 v22, 0x12

    sput v22, Lcom/android/server/am/ProcessList;->MID_HIDDEN_APPS_FOR_DHA:I

    const/16 v22, 0x9

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ProcessList;->mSzMidDHAStep:I

    const/16 v22, 0x9

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ProcessList;->mSzMidDHA2ndStep:I

    const/high16 v22, 0x4000

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ProcessList;->mSzDHAThresholdRate:F

    const/16 v22, 0x3

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ProcessList;->mSzDHAStep1:I

    const/16 v22, 0x3

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ProcessList;->mSzDHAStep2:I

    const/16 v22, 0x2

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ProcessList;->mSzDHARate1:I

    const/16 v22, 0x3

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ProcessList;->mSzDHARate2:I

    const/16 v22, 0x0

    sput-boolean v22, Lcom/android/server/am/ProcessList;->mIsLowMemModel:Z

    goto/16 :goto_1b4

    nop

    :array_24c
    .array-data 0x8
        0x0t 0x80t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0xa0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0xc0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0xe0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x60t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0xe0t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private writeFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_38
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_17

    :try_start_6
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_41
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_d} :catch_44

    if-eqz v2, :cond_47

    :try_start_f
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_14

    move-object v1, v2

    :cond_13
    :goto_13
    return-void

    :catch_14
    move-exception v3

    move-object v1, v2

    goto :goto_13

    :catch_17
    move-exception v0

    :goto_18
    :try_start_18
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to write "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_18 .. :try_end_30} :catchall_38

    if-eqz v1, :cond_13

    :try_start_32
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_13

    :catch_36
    move-exception v3

    goto :goto_13

    :catchall_38
    move-exception v3

    :goto_39
    if-eqz v1, :cond_3e

    :try_start_3b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_3f

    :cond_3e
    :goto_3e
    throw v3

    :catch_3f
    move-exception v4

    goto :goto_3e

    :catchall_41
    move-exception v3

    move-object v1, v2

    goto :goto_39

    :catch_44
    move-exception v0

    move-object v1, v2

    goto :goto_18

    :cond_47
    move-object v1, v2

    goto :goto_13
.end method


# virtual methods
.method applyDisplaySize(Lcom/android/server/wm/WindowManagerService;)V
    .registers 6

    const/4 v3, 0x1

    iget-boolean v1, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    if-nez v1, :cond_1f

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/WindowManagerService;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    if-eqz v1, :cond_1f

    iget v1, v0, Landroid/graphics/Point;->y:I

    if-eqz v1, :cond_1f

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    iput-boolean v3, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    :cond_1f
    return-void
.end method

.method getMemLevel(I)J
    .registers 7

    const-wide/16 v3, 0x400

    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v1, v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    aget v1, v1, v0

    if-gt p1, v1, :cond_14

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    aget-wide v1, v1, v0

    mul-long/2addr v1, v3

    :goto_13
    return-wide v1

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_17
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-wide v1, v1, v2

    mul-long/2addr v1, v3

    goto :goto_13
.end method

.method public updateHiddenAppNum(III)I
    .registers 16

    iget v8, p0, Lcom/android/server/am/ProcessList;->mSzUpdateDHACount:I

    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzUpdateDHAMaxCount:I

    if-ge v8, v9, :cond_3b

    iget v8, p0, Lcom/android/server/am/ProcessList;->mSzUpdateDHACount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/server/am/ProcessList;->mSzUpdateDHACount:I

    :goto_c
    move v2, p1

    iget v8, p0, Lcom/android/server/am/ProcessList;->mSzDHARate1:I

    mul-int/2addr v8, p1

    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzDHARate2:I

    div-int v0, v8, v9

    sub-int v1, p1, v0

    sget-object v8, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    if-eqz v8, :cond_7f

    sget-object v8, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v8}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    sget-object v8, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v8}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v6

    sget-object v8, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v8}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v8

    sget-object v10, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v10}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v10

    add-long v4, v8, v10

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-nez v8, :cond_63

    move v3, v2

    :goto_3a
    return v3

    :cond_3b
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/am/ProcessList;->mSzUpdateDHACount:I

    iget v8, p0, Lcom/android/server/am/ProcessList;->mSzMidDHAStep:I

    sub-int v8, p1, v8

    sget v9, Lcom/android/server/am/ProcessList;->MID_HIDDEN_APPS_FOR_DHA:I

    if-ge v8, v9, :cond_58

    sget v8, Lcom/android/server/am/ProcessList;->MID_HIDDEN_APPS_FOR_DHA:I

    :goto_48
    iput v8, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    iget v8, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2ndStep:I

    sub-int/2addr v8, v9

    sget v9, Lcom/android/server/am/ProcessList;->MIN_HIDDEN_APPS_FOR_DHA:I

    if-ge v8, v9, :cond_5d

    sget v8, Lcom/android/server/am/ProcessList;->MIN_HIDDEN_APPS_FOR_DHA:I

    :goto_55
    iput v8, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2nd:I

    goto :goto_c

    :cond_58
    iget v8, p0, Lcom/android/server/am/ProcessList;->mSzMidDHAStep:I

    sub-int v8, p1, v8

    goto :goto_48

    :cond_5d
    iget v8, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2ndStep:I

    sub-int/2addr v8, v9

    goto :goto_55

    :cond_63
    long-to-float v8, v4

    iget-wide v9, p0, Lcom/android/server/am/ProcessList;->mSz2ndDHAThreshold:J

    long-to-float v9, v9

    iget v10, p0, Lcom/android/server/am/ProcessList;->mSzDHAThresholdRate:F

    mul-float/2addr v9, v10

    cmpg-float v8, v8, v9

    if-ltz v8, :cond_74

    iget-wide v8, p0, Lcom/android/server/am/ProcessList;->mSzDHADefendThreshold:J

    cmp-long v8, v6, v8

    if-gez v8, :cond_81

    :cond_74
    iget v8, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    if-gt v2, v8, :cond_81

    iget v8, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2nd:I

    if-le v2, v8, :cond_81

    iget v8, p0, Lcom/android/server/am/ProcessList;->mSzDHAStep2:I

    sub-int/2addr v2, v8

    :cond_7f
    :goto_7f
    move v3, v2

    goto :goto_3a

    :cond_81
    long-to-float v8, v4

    iget-wide v9, p0, Lcom/android/server/am/ProcessList;->mSzDHAThreshold:J

    long-to-float v9, v9

    iget v10, p0, Lcom/android/server/am/ProcessList;->mSzDHAThresholdRate:F

    mul-float/2addr v9, v10

    cmpg-float v8, v8, v9

    if-ltz v8, :cond_92

    iget-wide v8, p0, Lcom/android/server/am/ProcessList;->mSzDHADefendThreshold:J

    cmp-long v8, v6, v8

    if-gez v8, :cond_9a

    :cond_92
    iget v8, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    if-le v2, v8, :cond_9a

    iget v8, p0, Lcom/android/server/am/ProcessList;->mSzDHAStep1:I

    sub-int/2addr v2, v8

    goto :goto_7f

    :cond_9a
    long-to-float v8, v4

    iget-wide v9, p0, Lcom/android/server/am/ProcessList;->mSz2ndDHAThreshold:J

    long-to-float v9, v9

    iget v10, p0, Lcom/android/server/am/ProcessList;->mSzDHAThresholdRate:F

    mul-float/2addr v9, v10

    sget-wide v10, Lcom/android/server/am/ProcessList;->DHA_INCREASE_THRESHOLD:J

    long-to-float v10, v10

    add-float/2addr v9, v10

    cmpl-float v8, v8, v9

    if-lez v8, :cond_e6

    iget-wide v8, p0, Lcom/android/server/am/ProcessList;->mSzDHADefendThreshold:J

    cmp-long v8, v6, v8

    if-lez v8, :cond_e6

    iget v8, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    if-ge v2, v8, :cond_e6

    if-ge p2, v1, :cond_b7

    if-lt p3, v0, :cond_e6

    :cond_b7
    iget v8, p0, Lcom/android/server/am/ProcessList;->mSzDHAStep2:I

    add-int/2addr v2, v8

    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/am/ProcessList;->mSzUpdateDHACount:I

    iget v8, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    if-gt v8, v2, :cond_7f

    iget v8, p0, Lcom/android/server/am/ProcessList;->mSzMidDHAStep:I

    sub-int v8, v2, v8

    sget v9, Lcom/android/server/am/ProcessList;->MID_HIDDEN_APPS_FOR_DHA:I

    if-ge v8, v9, :cond_db

    sget v8, Lcom/android/server/am/ProcessList;->MID_HIDDEN_APPS_FOR_DHA:I

    :goto_cb
    iput v8, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    iget v8, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2ndStep:I

    sub-int/2addr v8, v9

    sget v9, Lcom/android/server/am/ProcessList;->MIN_HIDDEN_APPS_FOR_DHA:I

    if-ge v8, v9, :cond_e0

    sget v8, Lcom/android/server/am/ProcessList;->MIN_HIDDEN_APPS_FOR_DHA:I

    :goto_d8
    iput v8, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2nd:I

    goto :goto_7f

    :cond_db
    iget v8, p0, Lcom/android/server/am/ProcessList;->mSzMidDHAStep:I

    sub-int v8, v2, v8

    goto :goto_cb

    :cond_e0
    iget v8, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2ndStep:I

    sub-int/2addr v8, v9

    goto :goto_d8

    :cond_e6
    long-to-float v8, v4

    iget-wide v9, p0, Lcom/android/server/am/ProcessList;->mSzDHAThreshold:J

    long-to-float v9, v9

    iget v10, p0, Lcom/android/server/am/ProcessList;->mSzDHAThresholdRate:F

    mul-float/2addr v9, v10

    sget-wide v10, Lcom/android/server/am/ProcessList;->DHA_INCREASE_THRESHOLD:J

    long-to-float v10, v10

    add-float/2addr v9, v10

    cmpl-float v8, v8, v9

    if-lez v8, :cond_7f

    iget-wide v8, p0, Lcom/android/server/am/ProcessList;->mSzDHADefendThreshold:J

    cmp-long v8, v6, v8

    if-lez v8, :cond_7f

    const/16 v8, 0x3c

    if-ge v2, v8, :cond_7f

    if-ge p2, v1, :cond_103

    if-lt p3, v0, :cond_7f

    :cond_103
    iget v8, p0, Lcom/android/server/am/ProcessList;->mSzDHAStep1:I

    add-int/2addr v2, v8

    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/am/ProcessList;->mSzUpdateDHACount:I

    iget v8, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    if-gt v8, v2, :cond_7f

    iget v8, p0, Lcom/android/server/am/ProcessList;->mSzMidDHAStep:I

    sub-int v8, v2, v8

    sget v9, Lcom/android/server/am/ProcessList;->MID_HIDDEN_APPS_FOR_DHA:I

    if-ge v8, v9, :cond_128

    sget v8, Lcom/android/server/am/ProcessList;->MID_HIDDEN_APPS_FOR_DHA:I

    :goto_117
    iput v8, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    iget v8, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2ndStep:I

    sub-int/2addr v8, v9

    sget v9, Lcom/android/server/am/ProcessList;->MIN_HIDDEN_APPS_FOR_DHA:I

    if-ge v8, v9, :cond_12d

    sget v8, Lcom/android/server/am/ProcessList;->MIN_HIDDEN_APPS_FOR_DHA:I

    :goto_124
    iput v8, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2nd:I

    goto/16 :goto_7f

    :cond_128
    iget v8, p0, Lcom/android/server/am/ProcessList;->mSzMidDHAStep:I

    sub-int v8, v2, v8

    goto :goto_117

    :cond_12d
    iget v8, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2ndStep:I

    sub-int/2addr v8, v9

    goto :goto_124
.end method
