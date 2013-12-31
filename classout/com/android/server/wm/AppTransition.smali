.class public Lcom/android/server/wm/AppTransition;
.super Ljava/lang/Object;
.source "AppTransition.java"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;


# static fields
.field private static final APP_STATE_IDLE:I = 0x0

.field private static final APP_STATE_READY:I = 0x1

.field private static final APP_STATE_RUNNING:I = 0x2

.field private static final APP_STATE_TIMEOUT:I = 0x3

.field private static final DEBUG_ANIM:Z = false

.field private static final DEBUG_APP_TRANSITIONS:Z = false

.field private static final DEFAULT_APP_TRANSITION_DURATION:J = 0xfaL

.field private static final NEXT_TRANSIT_TYPE_CUSTOM:I = 0x1

.field private static final NEXT_TRANSIT_TYPE_NONE:I = 0x0

.field private static final NEXT_TRANSIT_TYPE_SCALE_UP:I = 0x2

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_DOWN:I = 0x4

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_UP:I = 0x3

.field private static final RECENTS_THUMBNAIL_FADEOUT_FRACTION:F = 0.25f

.field private static final TAG:Ljava/lang/String; = "AppTransition"

.field public static final TRANSIT_ACTIVITY_CLOSE:I = 0x2007

.field public static final TRANSIT_ACTIVITY_OPEN:I = 0x1006

.field public static final TRANSIT_ENTER_MASK:I = 0x1000

.field public static final TRANSIT_EXIT_MASK:I = 0x2000

.field public static final TRANSIT_NONE:I = 0x0

.field public static final TRANSIT_TASK_CLOSE:I = 0x2009

.field public static final TRANSIT_TASK_OPEN:I = 0x1008

.field public static final TRANSIT_TASK_TO_BACK:I = 0x200b

.field public static final TRANSIT_TASK_TO_FRONT:I = 0x100a

.field public static final TRANSIT_UNSET:I = -0x1

.field public static final TRANSIT_WALLPAPER_CLOSE:I = 0x200c

.field public static final TRANSIT_WALLPAPER_INTRA_CLOSE:I = 0x200f

.field public static final TRANSIT_WALLPAPER_INTRA_OPEN:I = 0x100e

.field public static final TRANSIT_WALLPAPER_OPEN:I = 0x100d

.field private static final sRandom:Ljava/util/Random;


# instance fields
.field private mAppTransitionState:I

.field private final mConfigShortAnimTime:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mDecelerateInterpolator:Landroid/view/animation/Interpolator;

.field private final mH:Landroid/os/Handler;

.field private mIsPairingRandomAnimation:Z

.field private mNextAppTransition:I

.field private mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

.field private mNextAppTransitionEnter:I

.field private mNextAppTransitionExit:I

.field private mNextAppTransitionPackage:Ljava/lang/String;

.field private mNextAppTransitionScaleUp:Z

.field private mNextAppTransitionStartHeight:I

.field private mNextAppTransitionStartWidth:I

.field private mNextAppTransitionStartX:I

.field private mNextAppTransitionStartY:I

.field private mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

.field private mNextAppTransitionType:I

.field private final mThumbnailFadeoutInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/android/server/wm/AppTransition;->sRandom:Ljava/util/Random;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    iput v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    iput v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    iput v1, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mIsPairingRandomAnimation:Z

    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mH:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    const v0, 0x10c0003

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/android/server/wm/AppTransition$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AppTransition$1;-><init>(Lcom/android/server/wm/AppTransition;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeoutInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private appStateToString()Ljava/lang/String;
    .registers 3

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    packed-switch v0, :pswitch_data_28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1a
    return-object v0

    :pswitch_1b
    const-string v0, "APP_STATE_IDLE"

    goto :goto_1a

    :pswitch_1e
    const-string v0, "APP_STATE_READY"

    goto :goto_1a

    :pswitch_21
    const-string v0, "APP_STATE_RUNNING"

    goto :goto_1a

    :pswitch_24
    const-string v0, "APP_STATE_TIMEOUT"

    goto :goto_1a

    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1e
        :pswitch_21
        :pswitch_24
    .end packed-switch
.end method

.method public static appTransitionToString(I)Ljava/lang/String;
    .registers 2

    sparse-switch p0, :sswitch_data_2e

    const-string v0, "<UNKNOWN>"

    :goto_5
    return-object v0

    :sswitch_6
    const-string v0, "TRANSIT_UNSET"

    goto :goto_5

    :sswitch_9
    const-string v0, "TRANSIT_NONE"

    goto :goto_5

    :sswitch_c
    const-string v0, "TRANSIT_EXIT_MASK"

    goto :goto_5

    :sswitch_f
    const-string v0, "TRANSIT_ACTIVITY_OPEN"

    goto :goto_5

    :sswitch_12
    const-string v0, "TRANSIT_ACTIVITY_CLOSE"

    goto :goto_5

    :sswitch_15
    const-string v0, "TRANSIT_TASK_OPEN"

    goto :goto_5

    :sswitch_18
    const-string v0, "TRANSIT_TASK_CLOSE"

    goto :goto_5

    :sswitch_1b
    const-string v0, "TRANSIT_TASK_TO_FRONT"

    goto :goto_5

    :sswitch_1e
    const-string v0, "TRANSIT_TASK_TO_BACK"

    goto :goto_5

    :sswitch_21
    const-string v0, "TRANSIT_WALLPAPER_CLOSE"

    goto :goto_5

    :sswitch_24
    const-string v0, "TRANSIT_WALLPAPER_OPEN"

    goto :goto_5

    :sswitch_27
    const-string v0, "TRANSIT_WALLPAPER_INTRA_OPEN"

    goto :goto_5

    :sswitch_2a
    const-string v0, "TRANSIT_WALLPAPER_INTRA_CLOSE"

    goto :goto_5

    nop

    :sswitch_data_2e
    .sparse-switch
        -0x1 -> :sswitch_6
        0x0 -> :sswitch_9
        0x1006 -> :sswitch_f
        0x1008 -> :sswitch_15
        0x100a -> :sswitch_1b
        0x100d -> :sswitch_24
        0x100e -> :sswitch_27
        0x2000 -> :sswitch_c
        0x2007 -> :sswitch_12
        0x2009 -> :sswitch_18
        0x200b -> :sswitch_1e
        0x200c -> :sswitch_21
        0x200f -> :sswitch_2a
    .end sparse-switch
.end method

.method private static computePivot(IF)F
    .registers 5

    const/high16 v1, 0x3f80

    sub-float v0, p1, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x38d1b717

    cmpg-float v1, v1, v2

    if-gez v1, :cond_11

    int-to-float v1, p0

    :goto_10
    return v1

    :cond_11
    neg-int v1, p0

    int-to-float v1, v1

    div-float/2addr v1, v0

    goto :goto_10
.end method

.method private createScaleUpAnimationLocked(IZII)Landroid/view/animation/Animation;
    .registers 21

    const/4 v11, 0x0

    if-eqz p2, :cond_76

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    int-to-float v6, v6

    move/from16 v0, p3

    int-to-float v8, v0

    div-float v5, v6, v8

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    int-to-float v6, v6

    move/from16 v0, p4

    int-to-float v8, v0

    div-float v7, v6, v8

    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f80

    const/high16 v8, 0x3f80

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    invoke-static {v9, v5}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    invoke-static {v10, v7}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v10

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v12, Landroid/view/animation/AlphaAnimation;

    const/4 v6, 0x0

    const/high16 v8, 0x3f80

    invoke-direct {v12, v6, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeoutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v12, v6}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v15, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x0

    invoke-direct {v15, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v15, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v15, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 v6, 0x1

    invoke-virtual {v15, v6}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    move-object v11, v15

    :goto_57
    sparse-switch p1, :sswitch_data_a0

    const-wide/16 v13, 0xfa

    :goto_5c
    invoke-virtual {v11, v13, v14}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v6, 0x1

    invoke-virtual {v11, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/animation/Animation;->initialize(IIII)V

    return-object v11

    :cond_76
    const/16 v6, 0x100e

    move/from16 v0, p1

    if-eq v0, v6, :cond_82

    const/16 v6, 0x200f

    move/from16 v0, p1

    if-ne v0, v6, :cond_8f

    :cond_82
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f80

    const/4 v8, 0x0

    invoke-direct {v11, v6, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const/4 v6, 0x1

    invoke-virtual {v11, v6}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    goto :goto_57

    :cond_8f
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f80

    const/high16 v8, 0x3f80

    invoke-direct {v11, v6, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_57

    :sswitch_99
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    int-to-long v13, v6

    goto :goto_5c

    nop

    :sswitch_data_a0
    .sparse-switch
        0x1006 -> :sswitch_99
        0x2007 -> :sswitch_99
    .end sparse-switch
.end method

.method private entryAnimation(III)Landroid/view/animation/Animation;
    .registers 25

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x1

    move/from16 v11, p2

    move/from16 v10, p3

    if-le v11, v10, :cond_a

    const/4 v8, 0x0

    :cond_a
    const-wide/16 v12, 0x0

    const-wide/16 v6, 0x1f4

    if-nez p1, :cond_32

    new-instance v14, Landroid/view/animation/TranslateAnimation3D;

    invoke-direct {v14}, Landroid/view/animation/TranslateAnimation3D;-><init>()V

    const/4 v15, 0x0

    const/high16 v16, 0x3f80

    invoke-virtual/range {v14 .. v16}, Landroid/view/animation/TranslateAnimation3D;->setAlphaAnimation(FF)V

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/animation/TranslateAnimation3D;->setAbsolute(Z)V

    const-wide/16 v15, 0x2

    invoke-virtual/range {v14 .. v16}, Landroid/view/animation/TranslateAnimation3D;->setDuration(J)V

    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v14, v15}, Landroid/view/animation/TranslateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v14, v2}, Landroid/view/animation/TranslateAnimation3D;->setDetachWallpaper(Z)V

    move-object v3, v14

    move-object v4, v3

    :goto_31
    return-object v4

    :cond_32
    const/4 v15, 0x1

    move/from16 v0, p1

    if-ne v0, v15, :cond_78

    new-instance v14, Landroid/view/animation/TranslateAnimation3D;

    invoke-direct {v14}, Landroid/view/animation/TranslateAnimation3D;-><init>()V

    const/4 v15, 0x0

    const/16 v16, 0x0

    neg-int v0, v11

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x3ff8

    mul-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v14 .. v17}, Landroid/view/animation/TranslateAnimation3D;->setFromMoveVector(FFF)V

    const/4 v15, 0x0

    const/high16 v16, 0x3f80

    invoke-virtual/range {v14 .. v16}, Landroid/view/animation/TranslateAnimation3D;->setAlphaAnimation(FF)V

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/animation/TranslateAnimation3D;->setAbsolute(Z)V

    invoke-virtual {v14, v6, v7}, Landroid/view/animation/TranslateAnimation3D;->setDuration(J)V

    const-wide/16 v15, 0x2

    div-long v15, v6, v15

    invoke-virtual/range {v14 .. v16}, Landroid/view/animation/TranslateAnimation3D;->setStartOffset(J)V

    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v14, v15}, Landroid/view/animation/TranslateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v14, v2}, Landroid/view/animation/TranslateAnimation3D;->setDetachWallpaper(Z)V

    move-object v3, v14

    :cond_73
    :goto_73
    invoke-virtual {v3, v2}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    move-object v4, v3

    goto :goto_31

    :cond_78
    const/4 v15, 0x2

    move/from16 v0, p1

    if-ne v0, v15, :cond_15f

    if-nez v8, :cond_ef

    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    const/high16 v15, 0x3f80

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    int-to-double v15, v10

    const-wide/high16 v17, 0x4000

    div-double v15, v15, v17

    double-to-float v15, v15

    int-to-double v0, v11

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    neg-int v0, v11

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000

    div-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    const/high16 v15, -0x3d4c

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    const/4 v15, 0x0

    const/high16 v16, 0x3f80

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_73

    :cond_ef
    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    const/4 v15, 0x0

    const/high16 v16, 0x3f80

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    int-to-double v15, v11

    const-wide/high16 v17, 0x4000

    div-double v15, v15, v17

    double-to-float v15, v15

    int-to-double v0, v10

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    neg-int v0, v11

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000

    div-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    const/high16 v15, -0x3d4c

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    const/4 v15, 0x0

    const/high16 v16, 0x3f80

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_73

    :cond_15f
    const/4 v15, 0x3

    move/from16 v0, p1

    if-ne v0, v15, :cond_23d

    if-nez v8, :cond_1d2

    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    const/high16 v15, 0x3f80

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    int-to-double v15, v10

    const-wide/high16 v17, 0x4000

    div-double v15, v15, v17

    double-to-float v15, v15

    int-to-double v0, v11

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    int-to-double v0, v11

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000

    div-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    const/high16 v15, 0x42b4

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    const/4 v15, 0x0

    const/high16 v16, 0x3f80

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_73

    :cond_1d2
    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    const/4 v15, 0x0

    const/high16 v16, 0x3f80

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    int-to-double v15, v11

    const-wide/high16 v17, 0x4000

    div-double v15, v15, v17

    double-to-float v15, v15

    int-to-double v0, v10

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    int-to-double v0, v11

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000

    div-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    const/high16 v15, 0x42b4

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    const/4 v15, 0x0

    const/high16 v16, 0x3f80

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_73

    :cond_23d
    const/4 v15, 0x4

    move/from16 v0, p1

    if-ne v0, v15, :cond_307

    if-nez v8, :cond_2a6

    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    const/high16 v15, 0x3f80

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    int-to-double v15, v10

    const-wide/high16 v17, 0x4000

    div-double v15, v15, v17

    double-to-float v15, v15

    int-to-double v0, v11

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    const/high16 v15, -0x3ccc

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    const/4 v15, 0x0

    const/high16 v16, 0x3f80

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_73

    :cond_2a6
    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    const/4 v15, 0x0

    const/high16 v16, 0x3f80

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    int-to-double v15, v11

    const-wide/high16 v17, 0x4000

    div-double v15, v15, v17

    double-to-float v15, v15

    int-to-double v0, v10

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    const/high16 v15, -0x3ccc

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    const/4 v15, 0x0

    const/high16 v16, 0x3f80

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_73

    :cond_307
    const/4 v15, 0x5

    move/from16 v0, p1

    if-ne v0, v15, :cond_467

    if-nez v8, :cond_3bb

    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    const/high16 v15, 0x3f80

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    const-wide/16 v15, 0x0

    int-to-double v0, v10

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    double-to-float v15, v15

    const-wide/16 v16, 0x0

    int-to-double v0, v11

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    const/high16 v15, -0x3d10

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    const/4 v15, 0x0

    const/high16 v16, 0x3f80

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v14, Landroid/view/animation/TranslateAnimation3D;

    invoke-direct {v14}, Landroid/view/animation/TranslateAnimation3D;-><init>()V

    const-wide/16 v15, 0x0

    int-to-double v0, v11

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    double-to-float v15, v15

    const-wide/high16 v16, -0x4018

    int-to-double v0, v10

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    const-wide v17, -0x4046666666666666L

    int-to-double v0, v10

    move-wide/from16 v19, v0

    mul-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v14 .. v17}, Landroid/view/animation/TranslateAnimation3D;->setFromMoveVector(FFF)V

    const/4 v15, 0x0

    const/high16 v16, 0x3f80

    invoke-virtual/range {v14 .. v16}, Landroid/view/animation/TranslateAnimation3D;->setAlphaAnimation(FF)V

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/animation/TranslateAnimation3D;->setAbsolute(Z)V

    invoke-virtual {v14, v6, v7}, Landroid/view/animation/TranslateAnimation3D;->setDuration(J)V

    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v14, v15}, Landroid/view/animation/TranslateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v14, v2}, Landroid/view/animation/TranslateAnimation3D;->setDetachWallpaper(Z)V

    move-object v15, v3

    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_73

    :cond_3bb
    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    const/4 v15, 0x0

    const/high16 v16, 0x3f80

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    const-wide/high16 v15, 0x3ff0

    int-to-double v0, v11

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    double-to-float v15, v15

    const-wide/16 v16, 0x0

    int-to-double v0, v10

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    const/high16 v15, -0x3d10

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    const/4 v15, 0x0

    const/high16 v16, 0x3f80

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v14, Landroid/view/animation/TranslateAnimation3D;

    invoke-direct {v14}, Landroid/view/animation/TranslateAnimation3D;-><init>()V

    const-wide/high16 v15, -0x4018

    int-to-double v0, v11

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    double-to-float v15, v15

    const-wide/16 v16, 0x0

    int-to-double v0, v10

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    const-wide v17, -0x4046666666666666L

    int-to-double v0, v11

    move-wide/from16 v19, v0

    mul-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v14 .. v17}, Landroid/view/animation/TranslateAnimation3D;->setFromMoveVector(FFF)V

    const/4 v15, 0x0

    const/high16 v16, 0x3f80

    invoke-virtual/range {v14 .. v16}, Landroid/view/animation/TranslateAnimation3D;->setAlphaAnimation(FF)V

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/animation/TranslateAnimation3D;->setAbsolute(Z)V

    invoke-virtual {v14, v6, v7}, Landroid/view/animation/TranslateAnimation3D;->setDuration(J)V

    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v14, v15}, Landroid/view/animation/TranslateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v14, v2}, Landroid/view/animation/TranslateAnimation3D;->setDetachWallpaper(Z)V

    move-object v15, v3

    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_73

    :cond_467
    const/4 v15, 0x6

    move/from16 v0, p1

    if-ne v0, v15, :cond_5c7

    if-nez v8, :cond_51b

    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    const/high16 v15, 0x3f80

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    const-wide/16 v15, 0x0

    int-to-double v0, v10

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    double-to-float v15, v15

    const-wide/high16 v16, 0x3ff0

    int-to-double v0, v11

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    const/high16 v15, 0x42f0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    const/4 v15, 0x0

    const/high16 v16, 0x3f80

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v14, Landroid/view/animation/TranslateAnimation3D;

    invoke-direct {v14}, Landroid/view/animation/TranslateAnimation3D;-><init>()V

    const-wide/16 v15, 0x0

    int-to-double v0, v11

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    double-to-float v15, v15

    const-wide/high16 v16, 0x3fe8

    int-to-double v0, v10

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    const-wide v17, -0x4046666666666666L

    int-to-double v0, v10

    move-wide/from16 v19, v0

    mul-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v14 .. v17}, Landroid/view/animation/TranslateAnimation3D;->setFromMoveVector(FFF)V

    const/4 v15, 0x0

    const/high16 v16, 0x3f80

    invoke-virtual/range {v14 .. v16}, Landroid/view/animation/TranslateAnimation3D;->setAlphaAnimation(FF)V

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/animation/TranslateAnimation3D;->setAbsolute(Z)V

    invoke-virtual {v14, v6, v7}, Landroid/view/animation/TranslateAnimation3D;->setDuration(J)V

    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v14, v15}, Landroid/view/animation/TranslateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v14, v2}, Landroid/view/animation/TranslateAnimation3D;->setDetachWallpaper(Z)V

    move-object v15, v3

    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_73

    :cond_51b
    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    const/4 v15, 0x0

    const/high16 v16, 0x3f80

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    const-wide/16 v15, 0x0

    int-to-double v0, v11

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    double-to-float v15, v15

    const-wide/16 v16, 0x0

    int-to-double v0, v10

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    const/high16 v15, 0x42f0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    const/4 v15, 0x0

    const/high16 v16, 0x3f80

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v14, Landroid/view/animation/TranslateAnimation3D;

    invoke-direct {v14}, Landroid/view/animation/TranslateAnimation3D;-><init>()V

    const-wide/high16 v15, 0x3fe8

    int-to-double v0, v11

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    double-to-float v15, v15

    const-wide/16 v16, 0x0

    int-to-double v0, v10

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    const-wide v17, -0x4046666666666666L

    int-to-double v0, v11

    move-wide/from16 v19, v0

    mul-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v14 .. v17}, Landroid/view/animation/TranslateAnimation3D;->setFromMoveVector(FFF)V

    const/4 v15, 0x0

    const/high16 v16, 0x3f80

    invoke-virtual/range {v14 .. v16}, Landroid/view/animation/TranslateAnimation3D;->setAlphaAnimation(FF)V

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/animation/TranslateAnimation3D;->setAbsolute(Z)V

    invoke-virtual {v14, v6, v7}, Landroid/view/animation/TranslateAnimation3D;->setDuration(J)V

    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v14, v15}, Landroid/view/animation/TranslateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v14, v2}, Landroid/view/animation/TranslateAnimation3D;->setDetachWallpaper(Z)V

    move-object v15, v3

    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_73

    :cond_5c7
    const/4 v15, 0x7

    move/from16 v0, p1

    if-ne v0, v15, :cond_695

    if-nez v8, :cond_632

    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    const/high16 v15, 0x3f80

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    const-wide/high16 v15, 0x3fe0

    int-to-double v0, v10

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    double-to-float v15, v15

    const-wide/high16 v16, 0x3ff0

    int-to-double v0, v11

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    const/high16 v15, 0x42b4

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    const/4 v15, 0x0

    const/high16 v16, 0x3f80

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_73

    :cond_632
    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    const/4 v15, 0x0

    const/high16 v16, 0x3f80

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    const-wide/high16 v15, 0x3ff0

    int-to-double v0, v11

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    double-to-float v15, v15

    const-wide/high16 v16, 0x3fe0

    int-to-double v0, v10

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    const/high16 v15, 0x42b4

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    const/4 v15, 0x0

    const/high16 v16, 0x3f80

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_73

    :cond_695
    const/16 v15, 0x8

    move/from16 v0, p1

    if-ne v0, v15, :cond_712

    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    if-nez v8, :cond_6db

    new-instance v14, Landroid/view/animation/TranslateAnimation3D;

    invoke-direct {v14}, Landroid/view/animation/TranslateAnimation3D;-><init>()V

    const-wide/high16 v15, -0x4010

    int-to-double v0, v10

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    double-to-float v15, v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Landroid/view/animation/TranslateAnimation3D;->setFromMoveVector(FFF)V

    const/4 v15, 0x0

    const/high16 v16, 0x3f80

    invoke-virtual/range {v14 .. v16}, Landroid/view/animation/TranslateAnimation3D;->setAlphaAnimation(FF)V

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/animation/TranslateAnimation3D;->setAbsolute(Z)V

    invoke-virtual {v14, v6, v7}, Landroid/view/animation/TranslateAnimation3D;->setDuration(J)V

    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v14, v15}, Landroid/view/animation/TranslateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v14, v2}, Landroid/view/animation/TranslateAnimation3D;->setDetachWallpaper(Z)V

    move-object v15, v3

    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_73

    :cond_6db
    new-instance v14, Landroid/view/animation/TranslateAnimation3D;

    invoke-direct {v14}, Landroid/view/animation/TranslateAnimation3D;-><init>()V

    const/4 v15, 0x0

    const-wide/high16 v16, -0x4010

    int-to-double v0, v10

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Landroid/view/animation/TranslateAnimation3D;->setFromMoveVector(FFF)V

    const/4 v15, 0x0

    const/high16 v16, 0x3f80

    invoke-virtual/range {v14 .. v16}, Landroid/view/animation/TranslateAnimation3D;->setAlphaAnimation(FF)V

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/animation/TranslateAnimation3D;->setAbsolute(Z)V

    invoke-virtual {v14, v6, v7}, Landroid/view/animation/TranslateAnimation3D;->setDuration(J)V

    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v14, v15}, Landroid/view/animation/TranslateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v14, v2}, Landroid/view/animation/TranslateAnimation3D;->setDetachWallpaper(Z)V

    move-object v15, v3

    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_73

    :cond_712
    const/16 v15, 0x9

    move/from16 v0, p1

    if-ne v0, v15, :cond_7b6

    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    if-nez v8, :cond_76c

    new-instance v5, Landroid/view/animation/CustomRotation3D;

    invoke-direct {v5}, Landroid/view/animation/CustomRotation3D;-><init>()V

    int-to-float v15, v10

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v5, v15, v0, v1}, Landroid/view/animation/CustomRotation3D;->setFromMoveVector(FFF)V

    const/4 v15, 0x0

    const/high16 v16, 0x3f80

    move/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/view/animation/CustomRotation3D;->setAlphaAnimation(FF)V

    const/4 v15, 0x0

    const/high16 v16, 0x3f80

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v5, v15, v0, v1}, Landroid/view/animation/CustomRotation3D;->setAxisDirection(FFF)Z

    const/high16 v15, 0x4290

    invoke-virtual {v5, v15}, Landroid/view/animation/CustomRotation3D;->setInitialAngle(F)Z

    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Landroid/view/animation/CustomRotation3D;->setFinalAngle(F)Z

    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Landroid/view/animation/CustomRotation3D;->setRepeatCount(I)V

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/CustomRotation3D;->setDuration(J)V

    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v5, v15}, Landroid/view/animation/CustomRotation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v5, v2}, Landroid/view/animation/CustomRotation3D;->setDetachWallpaper(Z)V

    move-object v15, v3

    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_73

    :cond_76c
    new-instance v5, Landroid/view/animation/CustomRotation3D;

    invoke-direct {v5}, Landroid/view/animation/CustomRotation3D;-><init>()V

    const/4 v15, 0x0

    int-to-float v0, v10

    move/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v5, v15, v0, v1}, Landroid/view/animation/CustomRotation3D;->setFromMoveVector(FFF)V

    const/4 v15, 0x0

    const/high16 v16, 0x3f80

    move/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/view/animation/CustomRotation3D;->setAlphaAnimation(FF)V

    const/high16 v15, 0x3f80

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v5, v15, v0, v1}, Landroid/view/animation/CustomRotation3D;->setAxisDirection(FFF)Z

    const/high16 v15, -0x3d70

    invoke-virtual {v5, v15}, Landroid/view/animation/CustomRotation3D;->setInitialAngle(F)Z

    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Landroid/view/animation/CustomRotation3D;->setFinalAngle(F)Z

    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Landroid/view/animation/CustomRotation3D;->setRepeatCount(I)V

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/CustomRotation3D;->setDuration(J)V

    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v5, v15}, Landroid/view/animation/CustomRotation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v5, v2}, Landroid/view/animation/CustomRotation3D;->setDetachWallpaper(Z)V

    move-object v15, v3

    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_73

    :cond_7b6
    const/16 v15, 0x2000

    move/from16 v0, p1

    if-ne v0, v15, :cond_89f

    if-nez v8, :cond_82f

    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    const/high16 v15, 0x3f80

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    int-to-double v15, v10

    const-wide/high16 v17, 0x4000

    div-double v15, v15, v17

    double-to-float v15, v15

    int-to-double v0, v11

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    neg-int v0, v11

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000

    div-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    const/high16 v15, 0x42b4

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    const/4 v15, 0x0

    const/high16 v16, 0x3f80

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_73

    :cond_82f
    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    const/4 v15, 0x0

    const/high16 v16, 0x3f80

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    int-to-double v15, v11

    const-wide/high16 v17, 0x4000

    div-double v15, v15, v17

    double-to-float v15, v15

    int-to-double v0, v10

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    neg-int v0, v11

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000

    div-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    const/high16 v15, 0x42b4

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    const/4 v15, 0x0

    const/high16 v16, 0x3f80

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_73

    :cond_89f
    const/16 v15, 0x2001

    move/from16 v0, p1

    if-ne v0, v15, :cond_988

    if-nez v8, :cond_918

    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    const/high16 v15, 0x3f80

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    int-to-double v15, v10

    const-wide/high16 v17, 0x4000

    div-double v15, v15, v17

    double-to-float v15, v15

    int-to-double v0, v11

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    neg-int v0, v11

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000

    div-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    const/high16 v15, -0x3d4c

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    const/4 v15, 0x0

    const/high16 v16, 0x3f80

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_73

    :cond_918
    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    const/4 v15, 0x0

    const/high16 v16, 0x3f80

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    int-to-double v15, v11

    const-wide/high16 v17, 0x4000

    div-double v15, v15, v17

    double-to-float v15, v15

    int-to-double v0, v10

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    neg-int v0, v11

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000

    div-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    const/high16 v15, -0x3d4c

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    const/4 v15, 0x0

    const/high16 v16, 0x3f80

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_73

    :cond_988
    const/16 v15, 0x2002

    move/from16 v0, p1

    if-ne v0, v15, :cond_a71

    if-nez v8, :cond_a00

    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    const/4 v15, 0x0

    const/high16 v16, 0x3f80

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    int-to-double v15, v10

    const-wide/high16 v17, 0x4000

    div-double v15, v15, v17

    double-to-float v15, v15

    int-to-double v0, v11

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    neg-int v0, v10

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000

    div-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    const/high16 v15, -0x3d4c

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    const/4 v15, 0x0

    const/high16 v16, 0x3f80

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_73

    :cond_a00
    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    const/high16 v15, 0x3f80

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    int-to-double v15, v11

    const-wide/high16 v17, 0x4000

    div-double v15, v15, v17

    double-to-float v15, v15

    int-to-double v0, v10

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    neg-int v0, v10

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000

    div-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    const/high16 v15, 0x42b4

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    const/4 v15, 0x0

    const/high16 v16, 0x3f80

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_73

    :cond_a71
    const/16 v15, 0x2003

    move/from16 v0, p1

    if-ne v0, v15, :cond_73

    if-nez v8, :cond_ae9

    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    const/4 v15, 0x0

    const/high16 v16, 0x3f80

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    int-to-double v15, v10

    const-wide/high16 v17, 0x4000

    div-double v15, v15, v17

    double-to-float v15, v15

    int-to-double v0, v11

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    neg-int v0, v10

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000

    div-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    const/high16 v15, 0x42b4

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    const/4 v15, 0x0

    const/high16 v16, 0x3f80

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_73

    :cond_ae9
    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    const/high16 v15, 0x3f80

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    int-to-double v15, v11

    const-wide/high16 v17, 0x4000

    div-double v15, v15, v17

    double-to-float v15, v15

    int-to-double v0, v10

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    neg-int v0, v10

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000

    div-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    const/high16 v15, -0x3d4c

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    const/4 v15, 0x0

    const/high16 v16, 0x3f80

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_73
.end method

.method private exitAnimation(III)Landroid/view/animation/Animation;
    .registers 25

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x1

    move/from16 v11, p2

    move/from16 v10, p3

    if-le v11, v10, :cond_a

    const/4 v8, 0x0

    :cond_a
    const-wide/16 v12, 0x0

    const-wide/16 v6, 0x1f4

    if-nez p1, :cond_33

    new-instance v14, Landroid/view/animation/TranslateAnimation3D;

    invoke-direct {v14}, Landroid/view/animation/TranslateAnimation3D;-><init>()V

    const/high16 v15, 0x3f80

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/animation/TranslateAnimation3D;->setAlphaAnimation(FF)V

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/animation/TranslateAnimation3D;->setAbsolute(Z)V

    const-wide/16 v15, 0x2

    invoke-virtual/range {v14 .. v16}, Landroid/view/animation/TranslateAnimation3D;->setDuration(J)V

    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v14, v15}, Landroid/view/animation/TranslateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v14, v2}, Landroid/view/animation/TranslateAnimation3D;->setDetachWallpaper(Z)V

    move-object v3, v14

    move-object v4, v3

    :goto_32
    return-object v4

    :cond_33
    const/4 v15, 0x1

    move/from16 v0, p1

    if-ne v0, v15, :cond_77

    new-instance v14, Landroid/view/animation/TranslateAnimation3D;

    invoke-direct {v14}, Landroid/view/animation/TranslateAnimation3D;-><init>()V

    const/4 v15, 0x0

    const/16 v16, 0x0

    neg-int v0, v11

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x3ff8

    mul-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v14 .. v17}, Landroid/view/animation/TranslateAnimation3D;->setToMoveVector(FFF)V

    const/high16 v15, 0x3f80

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/animation/TranslateAnimation3D;->setAlphaAnimation(FF)V

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/animation/TranslateAnimation3D;->setAbsolute(Z)V

    const-wide/16 v15, 0x2

    div-long v15, v6, v15

    invoke-virtual/range {v14 .. v16}, Landroid/view/animation/TranslateAnimation3D;->setDuration(J)V

    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v14, v15}, Landroid/view/animation/TranslateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v14, v2}, Landroid/view/animation/TranslateAnimation3D;->setDetachWallpaper(Z)V

    move-object v3, v14

    :cond_72
    :goto_72
    invoke-virtual {v3, v2}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    move-object v4, v3

    goto :goto_32

    :cond_77
    const/4 v15, 0x2

    move/from16 v0, p1

    if-ne v0, v15, :cond_160

    if-nez v8, :cond_ef

    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    const/high16 v15, 0x3f80

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    int-to-double v15, v10

    const-wide/high16 v17, 0x4000

    div-double v15, v15, v17

    double-to-float v15, v15

    int-to-double v0, v11

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    neg-int v0, v11

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000

    div-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    const/high16 v15, 0x42b4

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    const/high16 v15, 0x3f80

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_72

    :cond_ef
    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    const/4 v15, 0x0

    const/high16 v16, 0x3f80

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    int-to-double v15, v11

    const-wide/high16 v17, 0x4000

    div-double v15, v15, v17

    double-to-float v15, v15

    int-to-double v0, v10

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    neg-int v0, v11

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000

    div-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    const/high16 v15, 0x42b4

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    const/high16 v15, 0x3f80

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_72

    :cond_160
    const/4 v15, 0x3

    move/from16 v0, p1

    if-ne v0, v15, :cond_240

    if-nez v8, :cond_1d4

    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    const/high16 v15, 0x3f80

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    int-to-double v15, v10

    const-wide/high16 v17, 0x4000

    div-double v15, v15, v17

    double-to-float v15, v15

    int-to-double v0, v11

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    int-to-double v0, v11

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000

    div-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    const/high16 v15, -0x3d4c

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    const/high16 v15, 0x3f80

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_72

    :cond_1d4
    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    const/4 v15, 0x0

    const/high16 v16, 0x3f80

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    int-to-double v15, v11

    const-wide/high16 v17, 0x4000

    div-double v15, v15, v17

    double-to-float v15, v15

    int-to-double v0, v10

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    int-to-double v0, v11

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000

    div-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    const/high16 v15, -0x3d4c

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    const/high16 v15, 0x3f80

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_72

    :cond_240
    const/4 v15, 0x4

    move/from16 v0, p1

    if-ne v0, v15, :cond_30c

    if-nez v8, :cond_2aa

    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    const/high16 v15, 0x3f80

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    int-to-double v15, v10

    const-wide/high16 v17, 0x4000

    div-double v15, v15, v17

    double-to-float v15, v15

    int-to-double v0, v11

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    const/high16 v15, 0x4334

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    const/high16 v15, 0x3f80

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_72

    :cond_2aa
    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    const/4 v15, 0x0

    const/high16 v16, 0x3f80

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    int-to-double v15, v11

    const-wide/high16 v17, 0x4000

    div-double v15, v15, v17

    double-to-float v15, v15

    int-to-double v0, v10

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    const/high16 v15, 0x4334

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    const/high16 v15, 0x3f80

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_72

    :cond_30c
    const/4 v15, 0x5

    move/from16 v0, p1

    if-ne v0, v15, :cond_470

    if-nez v8, :cond_3c2

    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    const/high16 v15, 0x3f80

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    const-wide/16 v15, 0x0

    int-to-double v0, v10

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    double-to-float v15, v15

    const-wide/high16 v16, 0x3ff0

    int-to-double v0, v11

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    const/high16 v15, 0x42f0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    const/high16 v15, 0x3f80

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v14, Landroid/view/animation/TranslateAnimation3D;

    invoke-direct {v14}, Landroid/view/animation/TranslateAnimation3D;-><init>()V

    const-wide/16 v15, 0x0

    int-to-double v0, v11

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    double-to-float v15, v15

    const-wide/high16 v16, 0x3fe8

    int-to-double v0, v10

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    const-wide v17, -0x4046666666666666L

    int-to-double v0, v10

    move-wide/from16 v19, v0

    mul-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v14 .. v17}, Landroid/view/animation/TranslateAnimation3D;->setToMoveVector(FFF)V

    const/high16 v15, 0x3f80

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/animation/TranslateAnimation3D;->setAlphaAnimation(FF)V

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/animation/TranslateAnimation3D;->setAbsolute(Z)V

    invoke-virtual {v14, v6, v7}, Landroid/view/animation/TranslateAnimation3D;->setDuration(J)V

    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v14, v15}, Landroid/view/animation/TranslateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v14, v2}, Landroid/view/animation/TranslateAnimation3D;->setDetachWallpaper(Z)V

    move-object v15, v3

    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_72

    :cond_3c2
    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    const/4 v15, 0x0

    const/high16 v16, 0x3f80

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    const-wide/16 v15, 0x0

    int-to-double v0, v11

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    double-to-float v15, v15

    const-wide/16 v16, 0x0

    int-to-double v0, v10

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    const/high16 v15, 0x42f0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    const/high16 v15, 0x3f80

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v14, Landroid/view/animation/TranslateAnimation3D;

    invoke-direct {v14}, Landroid/view/animation/TranslateAnimation3D;-><init>()V

    const-wide/high16 v15, 0x3fe8

    int-to-double v0, v11

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    double-to-float v15, v15

    const-wide/16 v16, 0x0

    int-to-double v0, v10

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    const-wide v17, -0x4046666666666666L

    int-to-double v0, v11

    move-wide/from16 v19, v0

    mul-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v14 .. v17}, Landroid/view/animation/TranslateAnimation3D;->setToMoveVector(FFF)V

    const/high16 v15, 0x3f80

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/animation/TranslateAnimation3D;->setAlphaAnimation(FF)V

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/animation/TranslateAnimation3D;->setAbsolute(Z)V

    invoke-virtual {v14, v6, v7}, Landroid/view/animation/TranslateAnimation3D;->setDuration(J)V

    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v14, v15}, Landroid/view/animation/TranslateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v14, v2}, Landroid/view/animation/TranslateAnimation3D;->setDetachWallpaper(Z)V

    move-object v15, v3

    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_72

    :cond_470
    const/4 v15, 0x6

    move/from16 v0, p1

    if-ne v0, v15, :cond_5d4

    if-nez v8, :cond_526

    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    const/high16 v15, 0x3f80

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    const-wide/16 v15, 0x0

    int-to-double v0, v10

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    double-to-float v15, v15

    const-wide/16 v16, 0x0

    int-to-double v0, v11

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    const/high16 v15, -0x3d10

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    const/high16 v15, 0x3f80

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v14, Landroid/view/animation/TranslateAnimation3D;

    invoke-direct {v14}, Landroid/view/animation/TranslateAnimation3D;-><init>()V

    const-wide/16 v15, 0x0

    int-to-double v0, v11

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    double-to-float v15, v15

    const-wide/high16 v16, -0x4018

    int-to-double v0, v10

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    const-wide v17, -0x4046666666666666L

    int-to-double v0, v10

    move-wide/from16 v19, v0

    mul-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v14 .. v17}, Landroid/view/animation/TranslateAnimation3D;->setToMoveVector(FFF)V

    const/high16 v15, 0x3f80

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/animation/TranslateAnimation3D;->setAlphaAnimation(FF)V

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/animation/TranslateAnimation3D;->setAbsolute(Z)V

    invoke-virtual {v14, v6, v7}, Landroid/view/animation/TranslateAnimation3D;->setDuration(J)V

    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v14, v15}, Landroid/view/animation/TranslateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v14, v2}, Landroid/view/animation/TranslateAnimation3D;->setDetachWallpaper(Z)V

    move-object v15, v3

    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_72

    :cond_526
    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    const/4 v15, 0x0

    const/high16 v16, 0x3f80

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    const-wide/high16 v15, 0x3ff0

    int-to-double v0, v11

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    double-to-float v15, v15

    const-wide/16 v16, 0x0

    int-to-double v0, v10

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    const/high16 v15, -0x3d10

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    const/high16 v15, 0x3f80

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v14, Landroid/view/animation/TranslateAnimation3D;

    invoke-direct {v14}, Landroid/view/animation/TranslateAnimation3D;-><init>()V

    const-wide/high16 v15, -0x4018

    int-to-double v0, v11

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    double-to-float v15, v15

    const-wide/16 v16, 0x0

    int-to-double v0, v10

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    const-wide v17, -0x4046666666666666L

    int-to-double v0, v11

    move-wide/from16 v19, v0

    mul-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v14 .. v17}, Landroid/view/animation/TranslateAnimation3D;->setToMoveVector(FFF)V

    const/high16 v15, 0x3f80

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/animation/TranslateAnimation3D;->setAlphaAnimation(FF)V

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/animation/TranslateAnimation3D;->setAbsolute(Z)V

    invoke-virtual {v14, v6, v7}, Landroid/view/animation/TranslateAnimation3D;->setDuration(J)V

    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v14, v15}, Landroid/view/animation/TranslateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v14, v2}, Landroid/view/animation/TranslateAnimation3D;->setDetachWallpaper(Z)V

    move-object v15, v3

    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_72

    :cond_5d4
    const/4 v15, 0x7

    move/from16 v0, p1

    if-ne v0, v15, :cond_6a4

    if-nez v8, :cond_640

    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    const/high16 v15, 0x3f80

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    const-wide/high16 v15, 0x3fe0

    int-to-double v0, v10

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    double-to-float v15, v15

    const-wide/16 v16, 0x0

    int-to-double v0, v11

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    const/high16 v15, 0x42b4

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    const/high16 v15, 0x3f80

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_72

    :cond_640
    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    const/4 v15, 0x0

    const/high16 v16, 0x3f80

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    const-wide/16 v15, 0x0

    int-to-double v0, v11

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    double-to-float v15, v15

    const-wide/high16 v16, 0x3fe0

    int-to-double v0, v10

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    const/high16 v15, 0x42b4

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    const/high16 v15, 0x3f80

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_72

    :cond_6a4
    const/16 v15, 0x8

    move/from16 v0, p1

    if-ne v0, v15, :cond_74a

    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    if-nez v8, :cond_6ff

    new-instance v5, Landroid/view/animation/CustomRotation3D;

    invoke-direct {v5}, Landroid/view/animation/CustomRotation3D;-><init>()V

    int-to-float v15, v10

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v5, v15, v0, v1}, Landroid/view/animation/CustomRotation3D;->setToMoveVector(FFF)V

    const/high16 v15, 0x3f80

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/view/animation/CustomRotation3D;->setAlphaAnimation(FF)V

    const/4 v15, 0x0

    const/high16 v16, 0x3f80

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v5, v15, v0, v1}, Landroid/view/animation/CustomRotation3D;->setAxisDirection(FFF)Z

    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Landroid/view/animation/CustomRotation3D;->setInitialAngle(F)Z

    const/high16 v15, 0x4290

    invoke-virtual {v5, v15}, Landroid/view/animation/CustomRotation3D;->setFinalAngle(F)Z

    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Landroid/view/animation/CustomRotation3D;->setRepeatCount(I)V

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/CustomRotation3D;->setDuration(J)V

    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v5, v15}, Landroid/view/animation/CustomRotation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v5, v2}, Landroid/view/animation/CustomRotation3D;->setDetachWallpaper(Z)V

    move-object v15, v3

    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_72

    :cond_6ff
    new-instance v5, Landroid/view/animation/CustomRotation3D;

    invoke-direct {v5}, Landroid/view/animation/CustomRotation3D;-><init>()V

    const/4 v15, 0x0

    int-to-float v0, v10

    move/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v5, v15, v0, v1}, Landroid/view/animation/CustomRotation3D;->setToMoveVector(FFF)V

    const/high16 v15, 0x3f80

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/view/animation/CustomRotation3D;->setAlphaAnimation(FF)V

    const/high16 v15, 0x3f80

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v5, v15, v0, v1}, Landroid/view/animation/CustomRotation3D;->setAxisDirection(FFF)Z

    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Landroid/view/animation/CustomRotation3D;->setInitialAngle(F)Z

    const/high16 v15, -0x3d70

    invoke-virtual {v5, v15}, Landroid/view/animation/CustomRotation3D;->setFinalAngle(F)Z

    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Landroid/view/animation/CustomRotation3D;->setRepeatCount(I)V

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/CustomRotation3D;->setDuration(J)V

    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v5, v15}, Landroid/view/animation/CustomRotation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v5, v2}, Landroid/view/animation/CustomRotation3D;->setDetachWallpaper(Z)V

    move-object v15, v3

    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_72

    :cond_74a
    const/16 v15, 0x9

    move/from16 v0, p1

    if-ne v0, v15, :cond_7c9

    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    if-nez v8, :cond_791

    new-instance v14, Landroid/view/animation/TranslateAnimation3D;

    invoke-direct {v14}, Landroid/view/animation/TranslateAnimation3D;-><init>()V

    const-wide/high16 v15, -0x4010

    int-to-double v0, v10

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    double-to-float v15, v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Landroid/view/animation/TranslateAnimation3D;->setToMoveVector(FFF)V

    const/high16 v15, 0x3f80

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/animation/TranslateAnimation3D;->setAlphaAnimation(FF)V

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/animation/TranslateAnimation3D;->setAbsolute(Z)V

    invoke-virtual {v14, v6, v7}, Landroid/view/animation/TranslateAnimation3D;->setDuration(J)V

    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v14, v15}, Landroid/view/animation/TranslateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v14, v2}, Landroid/view/animation/TranslateAnimation3D;->setDetachWallpaper(Z)V

    move-object v15, v3

    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_72

    :cond_791
    new-instance v14, Landroid/view/animation/TranslateAnimation3D;

    invoke-direct {v14}, Landroid/view/animation/TranslateAnimation3D;-><init>()V

    const/4 v15, 0x0

    const-wide/high16 v16, -0x4010

    int-to-double v0, v10

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Landroid/view/animation/TranslateAnimation3D;->setToMoveVector(FFF)V

    const/high16 v15, 0x3f80

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/animation/TranslateAnimation3D;->setAlphaAnimation(FF)V

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/animation/TranslateAnimation3D;->setAbsolute(Z)V

    invoke-virtual {v14, v6, v7}, Landroid/view/animation/TranslateAnimation3D;->setDuration(J)V

    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v14, v15}, Landroid/view/animation/TranslateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v14, v2}, Landroid/view/animation/TranslateAnimation3D;->setDetachWallpaper(Z)V

    move-object v15, v3

    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_72

    :cond_7c9
    const/16 v15, 0x2000

    move/from16 v0, p1

    if-ne v0, v15, :cond_8b4

    if-nez v8, :cond_843

    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    const/high16 v15, 0x3f80

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    int-to-double v15, v10

    const-wide/high16 v17, 0x4000

    div-double v15, v15, v17

    double-to-float v15, v15

    int-to-double v0, v11

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    neg-int v0, v11

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000

    div-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    const/high16 v15, -0x3d4c

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    const/high16 v15, 0x3f80

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_72

    :cond_843
    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    const/4 v15, 0x0

    const/high16 v16, 0x3f80

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    int-to-double v15, v11

    const-wide/high16 v17, 0x4000

    div-double v15, v15, v17

    double-to-float v15, v15

    int-to-double v0, v10

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    neg-int v0, v11

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000

    div-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    const/high16 v15, -0x3d4c

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    const/high16 v15, 0x3f80

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_72

    :cond_8b4
    const/16 v15, 0x2001

    move/from16 v0, p1

    if-ne v0, v15, :cond_99f

    if-nez v8, :cond_92e

    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    const/high16 v15, 0x3f80

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    int-to-double v15, v10

    const-wide/high16 v17, 0x4000

    div-double v15, v15, v17

    double-to-float v15, v15

    int-to-double v0, v11

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    neg-int v0, v11

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000

    div-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    const/high16 v15, 0x42b4

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    const/high16 v15, 0x3f80

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_72

    :cond_92e
    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    const/4 v15, 0x0

    const/high16 v16, 0x3f80

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    int-to-double v15, v11

    const-wide/high16 v17, 0x4000

    div-double v15, v15, v17

    double-to-float v15, v15

    int-to-double v0, v10

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    neg-int v0, v11

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000

    div-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    const/high16 v15, 0x42b4

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    const/high16 v15, 0x3f80

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_72

    :cond_99f
    const/16 v15, 0x2003

    move/from16 v0, p1

    if-ne v0, v15, :cond_a8a

    if-nez v8, :cond_a18

    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    const/4 v15, 0x0

    const/high16 v16, 0x3f80

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    int-to-double v15, v10

    const-wide/high16 v17, 0x4000

    div-double v15, v15, v17

    double-to-float v15, v15

    int-to-double v0, v11

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    neg-int v0, v10

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000

    div-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    const/high16 v15, -0x3d4c

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    const/high16 v15, 0x3f80

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_72

    :cond_a18
    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    const/high16 v15, 0x3f80

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    int-to-double v15, v11

    const-wide/high16 v17, 0x4000

    div-double v15, v15, v17

    double-to-float v15, v15

    int-to-double v0, v10

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    neg-int v0, v10

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000

    div-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    const/high16 v15, 0x42b4

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    const/high16 v15, 0x3f80

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_72

    :cond_a8a
    const/16 v15, 0x2002

    move/from16 v0, p1

    if-ne v0, v15, :cond_72

    if-nez v8, :cond_b03

    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    const/4 v15, 0x0

    const/high16 v16, 0x3f80

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    int-to-double v15, v10

    const-wide/high16 v17, 0x4000

    div-double v15, v15, v17

    double-to-float v15, v15

    int-to-double v0, v11

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    neg-int v0, v10

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000

    div-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    const/high16 v15, 0x42b4

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    const/high16 v15, 0x3f80

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_72

    :cond_b03
    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v9, Landroid/view/animation/RotateAnimation3D;

    invoke-direct {v9}, Landroid/view/animation/RotateAnimation3D;-><init>()V

    invoke-virtual {v9, v6, v7}, Landroid/view/animation/RotateAnimation3D;->setDuration(J)V

    const/high16 v15, 0x3f80

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAxisDirection(FFF)Z

    int-to-double v15, v11

    const-wide/high16 v17, 0x4000

    div-double v15, v15, v17

    double-to-float v15, v15

    int-to-double v0, v10

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    neg-int v0, v10

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000

    div-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/view/animation/RotateAnimation3D;->setAnchorPoint(FFF)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInitialAngle(F)Z

    const/high16 v15, -0x3d4c

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setFinalAngle(F)Z

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setRepeatCount(I)V

    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/view/animation/RotateAnimation3D;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v9, v2}, Landroid/view/animation/RotateAnimation3D;->setDetachWallpaper(Z)V

    const/high16 v15, 0x3f80

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/animation/RotateAnimation3D;->setFadeValues(FF)V

    move-object v15, v3

    check-cast v15, Landroid/view/animation/AnimationSet;

    invoke-virtual {v15, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_72
.end method

.method private getAnimationResourceID(Landroid/view/WindowManager$LayoutParams;I)I
    .registers 7

    const/4 v0, 0x0

    if-ltz p2, :cond_10

    invoke-direct {p0, p1}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;

    move-result-object v1

    if-eqz v1, :cond_10

    iget-object v2, v1, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    :cond_10
    return v0
.end method

.method private getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;
    .registers 7

    if-eqz p1, :cond_27

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v2, :cond_27

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_24

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    :goto_c
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/high16 v2, -0x100

    and-int/2addr v2, v1

    const/high16 v3, 0x100

    if-ne v2, v3, :cond_17

    const-string v0, "android"

    :cond_17
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v2

    sget-object v3, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    iget v4, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    :goto_23
    return-object v2

    :cond_24
    const-string v0, "android"

    goto :goto_c

    :cond_27
    const/4 v2, 0x0

    goto :goto_23
.end method

.method private getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;
    .registers 6

    if-eqz p1, :cond_18

    const/high16 v0, -0x100

    and-int/2addr v0, p2

    const/high16 v1, 0x100

    if-ne v0, v1, :cond_b

    const-string p1, "android"

    :cond_b
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    iget v2, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v0

    :goto_17
    return-object v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private loadAnimation(Ljava/lang/String;I)Landroid/view/animation/Animation;
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    if-ltz p2, :cond_e

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    if-eqz v2, :cond_e

    iget-object v1, v2, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    move v0, p2

    :cond_e
    if-eqz v0, :cond_15

    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    :goto_14
    return-object v3

    :cond_15
    const/4 v3, 0x0

    goto :goto_14
.end method

.method private transitTypeToString()Ljava/lang/String;
    .registers 3

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    packed-switch v0, :pswitch_data_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1a
    return-object v0

    :pswitch_1b
    const-string v0, "NEXT_TRANSIT_TYPE_NONE"

    goto :goto_1a

    :pswitch_1e
    const-string v0, "NEXT_TRANSIT_TYPE_CUSTOM"

    goto :goto_1a

    :pswitch_21
    const-string v0, "NEXT_TRANSIT_TYPE_SCALE_UP"

    goto :goto_1a

    :pswitch_24
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_UP"

    goto :goto_1a

    :pswitch_27
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_DOWN"

    goto :goto_1a

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1e
        :pswitch_21
        :pswitch_24
        :pswitch_27
    .end packed-switch
.end method


# virtual methods
.method clear()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    return-void
.end method

.method createThumbnailAnimationLocked(IZZII)Landroid/view/animation/Animation;
    .registers 30

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    if-lez v23, :cond_a0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v22, v0

    :goto_f
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    if-lez v21, :cond_a4

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v20, v0

    :goto_1e
    if-eqz p3, :cond_d2

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v7, :cond_a8

    move/from16 v0, p4

    int-to-float v7, v0

    div-float v6, v7, v22

    move/from16 v0, p5

    int-to-float v7, v0

    div-float v8, v7, v20

    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x3f80

    const/high16 v7, 0x3f80

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    const/high16 v10, 0x3f80

    div-float/2addr v10, v6

    invoke-static {v9, v10}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    const/high16 v11, 0x3f80

    div-float/2addr v11, v8

    invoke-static {v10, v11}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v10

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v16, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f80

    const/4 v9, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v7, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeoutInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v19, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x0

    move-object/from16 v0, v19

    invoke-direct {v0, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v5, v19

    :goto_7f
    sparse-switch p1, :sswitch_data_182

    const-wide/16 v17, 0xfa

    :goto_84
    move-wide/from16 v0, v17

    invoke-virtual {v5, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    move/from16 v0, p4

    move/from16 v1, p5

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/animation/Animation;->initialize(IIII)V

    return-object v5

    :cond_a0
    const/high16 v22, 0x3f80

    goto/16 :goto_f

    :cond_a4
    const/high16 v20, 0x3f80

    goto/16 :goto_1e

    :cond_a8
    move/from16 v0, p4

    int-to-float v7, v0

    div-float v6, v7, v22

    move/from16 v0, p5

    int-to-float v7, v0

    div-float v8, v7, v20

    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/high16 v7, 0x3f80

    const/high16 v9, 0x3f80

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    const/high16 v11, 0x3f80

    div-float/2addr v11, v6

    invoke-static {v10, v11}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    const/high16 v12, 0x3f80

    div-float/2addr v12, v8

    invoke-static {v11, v12}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v11

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    goto :goto_7f

    :cond_d2
    if-eqz p2, :cond_109

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v7, :cond_fe

    move/from16 v0, p4

    int-to-float v7, v0

    div-float v6, v22, v7

    move/from16 v0, p5

    int-to-float v7, v0

    div-float v8, v20, v7

    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/high16 v7, 0x3f80

    const/high16 v9, 0x3f80

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    invoke-static {v10, v6}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    invoke-static {v11, v8}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v11

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    goto :goto_7f

    :cond_fe
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f80

    const/high16 v9, 0x3f80

    invoke-direct {v5, v7, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto/16 :goto_7f

    :cond_109
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v7, :cond_12a

    const/16 v7, 0x100e

    move/from16 v0, p1

    if-ne v0, v7, :cond_11f

    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f80

    const/4 v9, 0x0

    invoke-direct {v5, v7, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto/16 :goto_7f

    :cond_11f
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f80

    const/high16 v9, 0x3f80

    invoke-direct {v5, v7, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto/16 :goto_7f

    :cond_12a
    move/from16 v0, p4

    int-to-float v7, v0

    div-float v6, v22, v7

    move/from16 v0, p5

    int-to-float v7, v0

    div-float v8, v20, v7

    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v10, 0x3f80

    const/high16 v12, 0x3f80

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    invoke-static {v7, v6}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v14

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    invoke-static {v7, v8}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v15

    move-object v9, v4

    move v11, v6

    move v13, v8

    invoke-direct/range {v9 .. v15}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    new-instance v16, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f80

    const/4 v9, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v7, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v19, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x1

    move-object/from16 v0, v19

    invoke-direct {v0, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 v7, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    move-object/from16 v5, v19

    goto/16 :goto_7f

    :sswitch_178
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    int-to-long v0, v7

    move-wide/from16 v17, v0

    goto/16 :goto_84

    nop

    :sswitch_data_182
    .sparse-switch
        0x1006 -> :sswitch_178
        0x2007 -> :sswitch_178
    .end sparse-switch
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mAppTransitionState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->appStateToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-eqz v0, :cond_32

    const-string v0, "  mNextAppTransitionType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->transitTypeToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_32
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    packed-switch v0, :pswitch_data_c0

    :goto_37
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_45

    const-string v0, "  mNextAppTransitionCallback="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_45
    return-void

    :pswitch_46
    const-string v0, "  mNextAppTransitionPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mNextAppTransitionEnter=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mNextAppTransitionExit=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_37

    :pswitch_6d
    const-string v0, "  mNextAppTransitionStartX="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mNextAppTransitionStartY="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mNextAppTransitionStartWidth="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mNextAppTransitionStartHeight="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_37

    :pswitch_96
    const-string v0, "  mNextAppTransitionThumbnail="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " mNextAppTransitionStartX="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mNextAppTransitionStartY="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mNextAppTransitionScaleUp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto/16 :goto_37

    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_46
        :pswitch_6d
        :pswitch_96
        :pswitch_96
    .end packed-switch
.end method

.method freeze()V
    .registers 2

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppTransition;->setAppTransition(I)V

    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->setReady()V

    return-void
.end method

.method getAppTransition()I
    .registers 2

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    return v0
.end method

.method getNextAppTransitionThumbnail()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method getStartingPoint(Landroid/graphics/Point;)V
    .registers 3

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    iput v0, p1, Landroid/graphics/Point;->x:I

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    iput v0, p1, Landroid/graphics/Point;->y:I

    return-void
.end method

.method goodToGo()V
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    return-void
.end method

.method isReady()Z
    .registers 4

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    if-eq v1, v0, :cond_a

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method isRunning()Z
    .registers 3

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method isTimeout()Z
    .registers 3

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method isTransitionEqual(I)Z
    .registers 3

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method isTransitionNone()Z
    .registers 2

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method isTransitionSet()Z
    .registers 3

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method loadAnimation(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;
    .registers 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    if-ltz p2, :cond_14

    invoke-direct {p0, p1}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    if-eqz v2, :cond_14

    iget-object v1, v2, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    iget-object v3, v2, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    :cond_14
    if-eqz v0, :cond_1b

    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    :goto_1a
    return-object v3

    :cond_1b
    const/4 v3, 0x0

    goto :goto_1a
.end method

.method loadAnimation(Landroid/view/WindowManager$LayoutParams;IZII)Landroid/view/animation/Animation;
    .registers 23

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_47

    if-eqz p3, :cond_21

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    :goto_e
    if-lez v15, :cond_31

    const/16 v5, 0x2003

    if-gt v15, v5, :cond_31

    if-eqz p3, :cond_26

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-direct {v0, v15, v1, v2}, Lcom/android/server/wm/AppTransition;->entryAnimation(III)Landroid/view/animation/Animation;

    move-result-object v11

    :cond_20
    :goto_20
    return-object v11

    :cond_21
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    goto :goto_e

    :cond_26
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-direct {v0, v15, v1, v2}, Lcom/android/server/wm/AppTransition;->exitAnimation(III)Landroid/view/animation/Animation;

    move-result-object v11

    goto :goto_20

    :cond_31
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    if-eqz p3, :cond_42

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    :goto_3b
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v5}, Lcom/android/server/wm/AppTransition;->loadAnimation(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v11

    goto :goto_20

    :cond_42
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    goto :goto_3b

    :cond_47
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5d

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/wm/AppTransition;->createScaleUpAnimationLocked(IZII)Landroid/view/animation/Animation;

    move-result-object v11

    goto :goto_20

    :cond_5d
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_6b

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_89

    :cond_6b
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_87

    const/4 v5, 0x1

    :goto_73
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    const/4 v8, 0x0

    move-object/from16 v5, p0

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/AppTransition;->createThumbnailAnimationLocked(IZZII)Landroid/view/animation/Animation;

    move-result-object v11

    goto :goto_20

    :cond_87
    const/4 v5, 0x0

    goto :goto_73

    :cond_89
    const/4 v12, 0x0

    sparse-switch p2, :sswitch_data_128

    :goto_8d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "ANIMATION_3D_STYLE"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-eqz v13, :cond_119

    const/16 v16, 0x0

    const/4 v5, -0x1

    if-ne v13, v5, :cond_107

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/AppTransition;->mIsPairingRandomAnimation:Z

    if-eqz v5, :cond_101

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/AppTransition;->mIsPairingRandomAnimation:Z

    sget-object v5, Lcom/android/server/wm/AppTransition;->sRandom:Ljava/util/Random;

    const/16 v6, 0x9

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/lit8 v16, v5, 0x1

    :goto_b8
    if-eqz p3, :cond_10a

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wm/AppTransition;->entryAnimation(III)Landroid/view/animation/Animation;

    move-result-object v11

    :goto_c6
    if-eqz v12, :cond_117

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/android/server/wm/AppTransition;->getAnimationResourceID(Landroid/view/WindowManager$LayoutParams;I)I

    move-result v14

    :goto_d0
    if-nez v14, :cond_20

    const/4 v11, 0x0

    goto/16 :goto_20

    :sswitch_d5
    if-eqz p3, :cond_d9

    const/4 v12, 0x4

    :goto_d8
    goto :goto_8d

    :cond_d9
    const/4 v12, 0x5

    goto :goto_d8

    :sswitch_db
    if-eqz p3, :cond_df

    const/4 v12, 0x6

    :goto_de
    goto :goto_8d

    :cond_df
    const/4 v12, 0x7

    goto :goto_de

    :sswitch_e1
    if-eqz p3, :cond_e6

    const/16 v12, 0x10

    :goto_e5
    goto :goto_8d

    :cond_e6
    const/16 v12, 0x11

    goto :goto_e5

    :sswitch_e9
    if-eqz p3, :cond_ee

    const/16 v12, 0x12

    :goto_ed
    goto :goto_8d

    :cond_ee
    const/16 v12, 0x13

    goto :goto_ed

    :sswitch_f1
    if-eqz p3, :cond_f6

    const/16 v12, 0x14

    :goto_f5
    goto :goto_8d

    :cond_f6
    const/16 v12, 0x15

    goto :goto_f5

    :sswitch_f9
    if-eqz p3, :cond_fe

    const/16 v12, 0x16

    :goto_fd
    goto :goto_8d

    :cond_fe
    const/16 v12, 0x17

    goto :goto_fd

    :cond_101
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/AppTransition;->mIsPairingRandomAnimation:Z

    goto :goto_b8

    :cond_107
    move/from16 v16, v13

    goto :goto_b8

    :cond_10a
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wm/AppTransition;->exitAnimation(III)Landroid/view/animation/Animation;

    move-result-object v11

    goto :goto_c6

    :cond_117
    const/4 v14, -0x1

    goto :goto_d0

    :cond_119
    if-eqz v12, :cond_125

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v12}, Lcom/android/server/wm/AppTransition;->loadAnimation(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v11

    :goto_123
    goto/16 :goto_20

    :cond_125
    const/4 v11, 0x0

    goto :goto_123

    nop

    :sswitch_data_128
    .sparse-switch
        0x1006 -> :sswitch_d5
        0x1008 -> :sswitch_d5
        0x100a -> :sswitch_d5
        0x100d -> :sswitch_e1
        0x100e -> :sswitch_f1
        0x2007 -> :sswitch_db
        0x2009 -> :sswitch_db
        0x200b -> :sswitch_db
        0x200c -> :sswitch_e9
        0x200f -> :sswitch_f9
    .end sparse-switch
.end method

.method overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V
    .registers 6

    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    iput p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    iput-object p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    :goto_17
    return-void

    :cond_18
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    goto :goto_17
.end method

.method overridePendingAppTransitionScaleUp(IIII)V
    .registers 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    iput p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    iput p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    iput p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    :cond_1b
    return-void
.end method

.method overridePendingAppTransitionThumb(Landroid/graphics/Bitmap;IILandroid/os/IRemoteCallback;Z)V
    .registers 7

    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_1e

    if-eqz p5, :cond_1c

    const/4 v0, 0x3

    :goto_9
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    iput-boolean p5, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    iput p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    iput-object p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    :goto_1b
    return-void

    :cond_1c
    const/4 v0, 0x4

    goto :goto_9

    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    goto :goto_1b
.end method

.method postAnimationCallback()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mH:Landroid/os/Handler;

    const/16 v2, 0x1a

    iget-object v3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    :cond_16
    return-void
.end method

.method prepare()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    :cond_9
    return-void
.end method

.method setAppTransition(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    return-void
.end method

.method public setCurrentUser(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    return-void
.end method

.method setIdle()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    return-void
.end method

.method setReady()V
    .registers 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    return-void
.end method

.method setTimeout()V
    .registers 2

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNextAppTransition=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
