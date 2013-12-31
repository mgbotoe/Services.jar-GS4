.class public Lcom/android/server/wm/DimLayer;
.super Ljava/lang/Object;
.source "DimLayer.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "DimLayer"


# instance fields
.field mAlpha:F

.field mDimSurface:Landroid/view/SurfaceControl;

.field final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field mDuration:J

.field mLastDimHeight:I

.field mLastDimWidth:I

.field mLayer:I

.field private mShowing:Z

.field mStartAlpha:F

.field mStartTime:J

.field mTargetAlpha:F


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;I)V
    .registers 11

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    iput v0, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DimLayer;->mShowing:Z

    iput v1, p0, Lcom/android/server/wm/DimLayer;->mStartAlpha:F

    iput v1, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DimLayer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    :try_start_19
    new-instance v0, Landroid/view/SurfaceControl;

    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    const-string v2, "DimLayer"

    const/16 v3, 0x10

    const/16 v4, 0x10

    const/4 v5, -0x1

    const v6, 0x20004

    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p2}, Landroid/view/SurfaceControl;->setLayerStack(I)V
    :try_end_31
    .catchall {:try_start_19 .. :try_end_31} :catchall_41
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_31} :catch_35

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    :goto_34
    return-void

    :catch_35
    move-exception v7

    :try_start_36
    const-string v0, "WindowManager"

    const-string v1, "Exception creating Dim surface"

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_41

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto :goto_34

    :catchall_41
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0
.end method

.method private durationEndsEarlier(J)Z
    .registers 9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    iget-wide v2, p0, Lcom/android/server/wm/DimLayer;->mStartTime:J

    iget-wide v4, p0, Lcom/android/server/wm/DimLayer;->mDuration:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private setAlpha(F)V
    .registers 5

    const/4 v2, 0x0

    iget v1, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1e

    :try_start_7
    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    cmpl-float v1, p1, v2

    if-nez v1, :cond_1f

    iget-boolean v1, p0, Lcom/android/server/wm/DimLayer;->mShowing:Z

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->hide()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/DimLayer;->mShowing:Z
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_1c} :catch_30

    :cond_1c
    :goto_1c
    iput p1, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    :cond_1e
    return-void

    :cond_1f
    cmpl-float v1, p1, v2

    if-lez v1, :cond_1c

    :try_start_23
    iget-boolean v1, p0, Lcom/android/server/wm/DimLayer;->mShowing:Z

    if-nez v1, :cond_1c

    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->show()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/DimLayer;->mShowing:Z
    :try_end_2f
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_2f} :catch_30

    goto :goto_1c

    :catch_30
    move-exception v0

    const-string v1, "DimLayer"

    const-string v2, "Failure setting alpha immediately"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c
.end method


# virtual methods
.method destroySurface()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    :cond_c
    return-void
.end method

.method getLayer()I
    .registers 2

    iget v0, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    return v0
.end method

.method getTargetAlpha()F
    .registers 2

    iget v0, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    return v0
.end method

.method hide()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/wm/DimLayer;->mShowing:Z

    if-eqz v0, :cond_9

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DimLayer;->hide(J)V

    :cond_9
    return-void
.end method

.method hide(J)V
    .registers 5

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/server/wm/DimLayer;->mShowing:Z

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_11

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DimLayer;->durationEndsEarlier(J)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_11
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/wm/DimLayer;->show(IFJ)V

    :cond_16
    return-void
.end method

.method isAnimating()Z
    .registers 3

    iget v0, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    iget v1, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method isDimming()Z
    .registers 3

    iget v0, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDimSurface="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mAlpha="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(F)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastDimWidth="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DimLayer;->mLastDimWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mLastDimWidth="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DimLayer;->mLastDimWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Last animation: mStartTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/wm/DimLayer;->mStartTime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, " mDuration="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/wm/DimLayer;->mDuration:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, " curTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    const-string v0, " mStartAlpha="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DimLayer;->mStartAlpha:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(F)V

    const-string v0, " mTargetAlpha="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    return-void
.end method

.method setLayer(I)V
    .registers 3

    iget v0, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    if-eq v0, p1, :cond_b

    iput p1, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setLayer(I)V

    :cond_b
    return-void
.end method

.method show()V
    .registers 5

    invoke-virtual {p0}, Lcom/android/server/wm/DimLayer;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    iget v1, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/wm/DimLayer;->show(IFJ)V

    :cond_f
    return-void
.end method

.method show(IFJ)V
    .registers 20

    iget-object v11, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    if-nez v11, :cond_11

    const-string v11, "DimLayer"

    const-string v12, "show: no Surface"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    iput v11, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    iput v11, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    :goto_10
    return-void

    :cond_11
    iget-object v11, p0, Lcom/android/server/wm/DimLayer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v11}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v8

    iget v11, v8, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-double v11, v11

    const-wide/high16 v13, 0x3ff8

    mul-double/2addr v11, v13

    double-to-int v6, v11

    iget v11, v8, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-double v11, v11

    const-wide/high16 v13, 0x3ff8

    mul-double/2addr v11, v13

    double-to-int v5, v11

    mul-int/lit8 v11, v6, -0x1

    div-int/lit8 v11, v11, 0x6

    int-to-float v9, v11

    mul-int/lit8 v11, v5, -0x1

    div-int/lit8 v11, v11, 0x6

    int-to-float v10, v11

    iget v11, p0, Lcom/android/server/wm/DimLayer;->mLastDimWidth:I

    if-ne v11, v6, :cond_3d

    iget v11, p0, Lcom/android/server/wm/DimLayer;->mLastDimHeight:I

    if-ne v11, v5, :cond_3d

    iget v11, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    move/from16 v0, p1

    if-eq v11, v0, :cond_56

    :cond_3d
    :try_start_3d
    iget-object v11, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v11, v9, v10}, Landroid/view/SurfaceControl;->setPosition(FF)V

    iget-object v11, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v11, v6, v5}, Landroid/view/SurfaceControl;->setSize(II)V

    iget-object v11, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/view/SurfaceControl;->setLayer(I)V
    :try_end_4e
    .catch Ljava/lang/RuntimeException; {:try_start_3d .. :try_end_4e} :catch_86

    :goto_4e
    iput v6, p0, Lcom/android/server/wm/DimLayer;->mLastDimWidth:I

    iput v5, p0, Lcom/android/server/wm/DimLayer;->mLastDimHeight:I

    move/from16 v0, p1

    iput v0, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    :cond_56
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/android/server/wm/DimLayer;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_6e

    iget v11, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    cmpl-float v11, v11, p2

    if-nez v11, :cond_76

    move-wide/from16 v0, p3

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/DimLayer;->durationEndsEarlier(J)Z

    move-result v11

    if-nez v11, :cond_76

    :cond_6e
    if-nez v2, :cond_81

    iget v11, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    cmpl-float v11, v11, p2

    if-eqz v11, :cond_81

    :cond_76
    const-wide/16 v11, 0x0

    cmp-long v11, p3, v11

    if-gtz v11, :cond_8f

    move/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/android/server/wm/DimLayer;->setAlpha(F)V

    :cond_81
    :goto_81
    move/from16 v0, p2

    iput v0, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    goto :goto_10

    :catch_86
    move-exception v7

    const-string v11, "DimLayer"

    const-string v12, "Failure setting size or layer"

    invoke-static {v11, v12, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4e

    :cond_8f
    iget v11, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    iput v11, p0, Lcom/android/server/wm/DimLayer;->mStartAlpha:F

    iput-wide v3, p0, Lcom/android/server/wm/DimLayer;->mStartTime:J

    move-wide/from16 v0, p3

    iput-wide v0, p0, Lcom/android/server/wm/DimLayer;->mDuration:J

    goto :goto_81
.end method

.method stepAnimation()Z
    .registers 10

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    if-nez v4, :cond_12

    const-string v4, "DimLayer"

    const-string v5, "stepAnimation: null Surface"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v8, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    iput v8, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    const/4 v4, 0x0

    :goto_11
    return v4

    :cond_12
    invoke-virtual {p0}, Lcom/android/server/wm/DimLayer;->isAnimating()Z

    move-result v4

    if-eqz v4, :cond_49

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget v4, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    iget v5, p0, Lcom/android/server/wm/DimLayer;->mStartAlpha:F

    sub-float v1, v4, v5

    iget v4, p0, Lcom/android/server/wm/DimLayer;->mStartAlpha:F

    iget-wide v5, p0, Lcom/android/server/wm/DimLayer;->mStartTime:J

    sub-long v5, v2, v5

    long-to-float v5, v5

    mul-float/2addr v5, v1

    iget-wide v6, p0, Lcom/android/server/wm/DimLayer;->mDuration:J

    long-to-float v6, v6

    div-float/2addr v5, v6

    add-float v0, v4, v5

    cmpl-float v4, v1, v8

    if-lez v4, :cond_3a

    iget v4, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    cmpl-float v4, v0, v4

    if-gtz v4, :cond_44

    :cond_3a
    cmpg-float v4, v1, v8

    if-gez v4, :cond_46

    iget v4, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    cmpg-float v4, v0, v4

    if-gez v4, :cond_46

    :cond_44
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    :cond_46
    invoke-direct {p0, v0}, Lcom/android/server/wm/DimLayer;->setAlpha(F)V

    :cond_49
    invoke-virtual {p0}, Lcom/android/server/wm/DimLayer;->isAnimating()Z

    move-result v4

    goto :goto_11
.end method
