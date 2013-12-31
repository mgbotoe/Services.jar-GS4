.class public Lcom/android/server/am/ToolkitTabDialog;
.super Landroid/app/Dialog;
.source "ToolkitTabDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;,
        Lcom/android/server/am/ToolkitTabDialog$GestureListener;,
        Lcom/android/server/am/ToolkitTabDialog$ArrowView;,
        Lcom/android/server/am/ToolkitTabDialog$GuideView;,
        Lcom/android/server/am/ToolkitTabDialog$OnStatusChangeListener;
    }
.end annotation


# instance fields
.field private mArrowScrollDownView:Lcom/android/server/am/ToolkitTabDialog$ArrowView;

.field private mArrowScrollUpView:Lcom/android/server/am/ToolkitTabDialog$ArrowView;

.field private mChangeListener:Lcom/android/server/am/ToolkitTabDialog$OnStatusChangeListener;

.field private mContentsRect:Landroid/graphics/Rect;

.field private mContentsRectForFloating:Landroid/graphics/Rect;

.field private mContentsView:Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;

.field private mContext:Landroid/content/Context;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGravity:I

.field private mGuideContentsRect:Landroid/graphics/Rect;

.field private mGuideGravity:I

.field private mGuideMode:I

.field private mGuideUiStatus:I

.field private mGuideView:Lcom/android/server/am/ToolkitTabDialog$GuideView;

.field private mMode:I

.field private mNaturalBarHeight:I

.field private mOldContentsRect:Landroid/graphics/Rect;

.field private mOrientation:I

.field private mOrientationEventListener:Landroid/view/OrientationEventListener;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mScrollMode:Z

.field private mScrollView:Landroid/view/ViewGroup;

.field private mStatusBarHeight:I

.field private mTabAppIconHeight:I

.field private mTabAppIconWidth:I

.field private mTabArrowWidth:I

.field private mTabContentsHeight:I

.field private mTabContentsWidth:I

.field private mTabHeight:I

.field private mTabItemFocusChangeListener:Lcom/android/server/am/ToolkitTabWidget$OnToolkitTabItemListener;

.field private mTabItemHeight:I

.field private mTabItemWidth:I

.field private mTabWidget:Lcom/android/server/am/ToolkitTabWidget;

.field private mTabWidgetBackground:Landroid/graphics/drawable/Drawable;

.field private mTabWidth:I

.field private mUiStatus:I

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowPos:Landroid/graphics/Point;

.field private mbGuideInitX:I

.field private mbGuideInitY:I

.field private mbMovedWindow:Z

.field private mbSetContentsView:Z

.field private mbShowGuideWindow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/4 v2, -0x1

    const/4 v1, 0x0

    const v0, 0x1030338

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mMode:I

    iput v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mUiStatus:I

    iput-boolean v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mbSetContentsView:Z

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mGravity:I

    iput v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mOrientation:I

    iput-boolean v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollMode:Z

    iput-boolean v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mbShowGuideWindow:Z

    iput-boolean v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mbMovedWindow:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideContentsRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mWindowPos:Landroid/graphics/Point;

    iput v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenWidth:I

    iput v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenHeight:I

    iput v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mNaturalBarHeight:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRectForFloating:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mOldContentsRect:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/server/am/ToolkitTabDialog$5;

    invoke-direct {v0, p0}, Lcom/android/server/am/ToolkitTabDialog$5;-><init>(Lcom/android/server/am/ToolkitTabDialog;)V

    iput-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabItemFocusChangeListener:Lcom/android/server/am/ToolkitTabWidget$OnToolkitTabItemListener;

    iput-object p1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/am/ToolkitTabDialog;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 6

    const/4 v2, -0x1

    const/4 v1, 0x0

    const v0, 0x1030338

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mMode:I

    iput v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mUiStatus:I

    iput-boolean v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mbSetContentsView:Z

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mGravity:I

    iput v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mOrientation:I

    iput-boolean v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollMode:Z

    iput-boolean v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mbShowGuideWindow:Z

    iput-boolean v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mbMovedWindow:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideContentsRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mWindowPos:Landroid/graphics/Point;

    iput v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenWidth:I

    iput v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenHeight:I

    iput v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mNaturalBarHeight:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRectForFloating:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mOldContentsRect:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/server/am/ToolkitTabDialog$5;

    invoke-direct {v0, p0}, Lcom/android/server/am/ToolkitTabDialog$5;-><init>(Lcom/android/server/am/ToolkitTabDialog;)V

    iput-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabItemFocusChangeListener:Lcom/android/server/am/ToolkitTabWidget$OnToolkitTabItemListener;

    iput-object p1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/am/ToolkitTabDialog;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/ToolkitTabDialog;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/ToolkitTabDialog;)I
    .registers 2

    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mOrientation:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/am/ToolkitTabDialog;)I
    .registers 2

    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabItemHeight:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/am/ToolkitTabDialog;)I
    .registers 2

    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabItemWidth:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/am/ToolkitTabDialog;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mbMovedWindow:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/am/ToolkitTabDialog;)I
    .registers 2

    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mGravity:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/am/ToolkitTabDialog;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/ToolkitTabDialog;->notifyOrientationChange(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/ToolkitTabDialog;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/ToolkitTabDialog;->scroll(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/am/ToolkitTabDialog;Ljava/lang/Object;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ToolkitTabDialog;->notifyFocusTabChange(Ljava/lang/Object;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/am/ToolkitTabDialog;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/ToolkitTabDialog;->calcScrollMode()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/am/ToolkitTabDialog;Ljava/lang/Object;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ToolkitTabDialog;->notifyTabItemChange(Ljava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/am/ToolkitTabDialog;)I
    .registers 2

    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mUiStatus:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/am/ToolkitTabDialog;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/ToolkitTabDialog;->hideGuideView()V

    return-void
.end method

.method private calcScrollMode()V
    .registers 8

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-boolean v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollMode:Z

    iget v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mGravity:I

    sparse-switch v2, :sswitch_data_9c

    :goto_b
    iget-boolean v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollMode:Z

    if-eq v1, v2, :cond_40

    iget-boolean v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mbSetContentsView:Z

    if-eqz v2, :cond_40

    iget-boolean v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollMode:Z

    if-nez v2, :cond_6f

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mArrowScrollUpView:Lcom/android/server/am/ToolkitTabDialog$ArrowView;

    invoke-virtual {v2, v6}, Lcom/android/server/am/ToolkitTabDialog$ArrowView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mArrowScrollDownView:Lcom/android/server/am/ToolkitTabDialog$ArrowView;

    invoke-virtual {v2, v6}, Lcom/android/server/am/ToolkitTabDialog$ArrowView;->setVisibility(I)V

    :goto_21
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsView:Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;

    iget-object v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabWidgetBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;->setCustomBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mGravity:I

    sparse-switch v2, :sswitch_data_ae

    iget-boolean v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollMode:Z

    if-eqz v2, :cond_7a

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabArrowWidth:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_40
    :goto_40
    return-void

    :sswitch_41
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabWidget:Lcom/android/server/am/ToolkitTabWidget;

    invoke-virtual {v2}, Lcom/android/server/am/ToolkitTabWidget;->getTabCount()I

    move-result v2

    iget v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabItemHeight:I

    mul-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-le v2, v3, :cond_55

    iput-boolean v5, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollMode:Z

    goto :goto_b

    :cond_55
    iput-boolean v4, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollMode:Z

    goto :goto_b

    :sswitch_58
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabWidget:Lcom/android/server/am/ToolkitTabWidget;

    invoke-virtual {v2}, Lcom/android/server/am/ToolkitTabWidget;->getTabCount()I

    move-result v2

    iget v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabItemWidth:I

    mul-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-le v2, v3, :cond_6c

    iput-boolean v5, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollMode:Z

    goto :goto_b

    :cond_6c
    iput-boolean v4, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollMode:Z

    goto :goto_b

    :cond_6f
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mArrowScrollUpView:Lcom/android/server/am/ToolkitTabDialog$ArrowView;

    invoke-virtual {v2, v4}, Lcom/android/server/am/ToolkitTabDialog$ArrowView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mArrowScrollDownView:Lcom/android/server/am/ToolkitTabDialog$ArrowView;

    invoke-virtual {v2, v4}, Lcom/android/server/am/ToolkitTabDialog$ArrowView;->setVisibility(I)V

    goto :goto_21

    :cond_7a
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabArrowWidth:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_40

    :sswitch_84
    iget-boolean v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollMode:Z

    if-eqz v2, :cond_92

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabArrowWidth:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_40

    :cond_92
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabArrowWidth:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_40

    :sswitch_data_9c
    .sparse-switch
        0x3 -> :sswitch_41
        0x5 -> :sswitch_41
        0x30 -> :sswitch_58
        0x50 -> :sswitch_58
    .end sparse-switch

    :sswitch_data_ae
    .sparse-switch
        0x30 -> :sswitch_84
        0x50 -> :sswitch_84
    .end sparse-switch
.end method

.method private changeBackground()V
    .registers 4

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mMode:I

    packed-switch v1, :pswitch_data_44

    :cond_b
    :goto_b
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsView:Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabWidgetBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;->setCustomBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsView:Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;

    invoke-virtual {v1}, Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;->invalidate()V

    return-void

    :pswitch_18
    const v1, 0x108091c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabWidgetBackground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mArrowScrollDownView:Lcom/android/server/am/ToolkitTabDialog$ArrowView;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mArrowScrollDownView:Lcom/android/server/am/ToolkitTabDialog$ArrowView;

    const v2, 0x1080924

    invoke-virtual {v1, v2}, Lcom/android/server/am/ToolkitTabDialog$ArrowView;->setBackgroundResource(I)V

    goto :goto_b

    :pswitch_2e
    const v1, 0x1080919

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabWidgetBackground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mArrowScrollDownView:Lcom/android/server/am/ToolkitTabDialog$ArrowView;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mArrowScrollDownView:Lcom/android/server/am/ToolkitTabDialog$ArrowView;

    const v2, 0x1080920

    invoke-virtual {v1, v2}, Lcom/android/server/am/ToolkitTabDialog$ArrowView;->setBackgroundResource(I)V

    goto :goto_b

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_18
        :pswitch_2e
    .end packed-switch
.end method

.method private changeUiStatus(IZ)V
    .registers 8

    const/4 v4, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mUiStatus:I

    if-ne v1, p1, :cond_b

    if-eqz p2, :cond_4

    :cond_b
    iput p1, p0, Lcom/android/server/am/ToolkitTabDialog;->mUiStatus:I

    invoke-direct {p0}, Lcom/android/server/am/ToolkitTabDialog;->notifyUiStatus()V

    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mUiStatus:I

    packed-switch v1, :pswitch_data_148

    :goto_15
    invoke-direct {p0}, Lcom/android/server/am/ToolkitTabDialog;->notifyModeChange()V

    invoke-direct {p0}, Lcom/android/server/am/ToolkitTabDialog;->notifyContentsSizeChange()V

    goto :goto_4

    :pswitch_1c
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mOldContentsRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_33
    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mGravity:I

    sparse-switch v1, :sswitch_data_152

    :goto_38
    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabDialog;->dismiss()V

    goto :goto_15

    :sswitch_3c
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    iput v4, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_38

    :sswitch_45
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenHeight:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenHeight:I

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_38

    :sswitch_52
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    iput v4, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    iput v4, v1, Landroid/graphics/Rect;->right:I

    goto :goto_38

    :sswitch_5b
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenWidth:I

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenWidth:I

    iput v2, v1, Landroid/graphics/Rect;->right:I

    goto :goto_38

    :pswitch_68
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-eqz v1, :cond_7f

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-eqz v1, :cond_7f

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mOldContentsRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_7f
    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mGravity:I

    sparse-switch v1, :sswitch_data_164

    :goto_84
    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabWidth:I

    iget v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabHeight:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/ToolkitTabDialog;->makeViews(II)V

    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mGravity:I

    invoke-direct {p0, v1}, Lcom/android/server/am/ToolkitTabDialog;->layout(I)V

    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabDialog;->show()V

    goto :goto_15

    :sswitch_94
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    iput v4, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_84

    :sswitch_9d
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenHeight:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenHeight:I

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_84

    :sswitch_aa
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    iput v4, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    iput v4, v1, Landroid/graphics/Rect;->right:I

    goto :goto_84

    :sswitch_b3
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenWidth:I

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenWidth:I

    iput v2, v1, Landroid/graphics/Rect;->right:I

    goto :goto_84

    :pswitch_c0
    invoke-direct {p0}, Lcom/android/server/am/ToolkitTabDialog;->isFloatingMode()Z

    move-result v1

    if-eqz v1, :cond_f7

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-eqz v1, :cond_d6

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-nez v1, :cond_e2

    :cond_d6
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mOldContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mOldContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    :cond_e2
    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabWidth:I

    iget v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabHeight:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/ToolkitTabDialog;->makeViews(II)V

    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabDialog;->getFullRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mGravity:I

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/ToolkitTabDialog;->layout(ILandroid/graphics/Rect;)V

    :goto_f2
    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabDialog;->show()V

    goto/16 :goto_15

    :cond_f7
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-eqz v1, :cond_107

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-nez v1, :cond_118

    :cond_107
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mOldContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mGravity:I

    packed-switch v1, :pswitch_data_176

    :goto_113
    :pswitch_113
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mOldContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    :cond_118
    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabWidth:I

    iget v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabHeight:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/ToolkitTabDialog;->makeViews(II)V

    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mGravity:I

    invoke-direct {p0, v1}, Lcom/android/server/am/ToolkitTabDialog;->layout(I)V

    goto :goto_f2

    :pswitch_125
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    iput v4, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mOldContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    goto :goto_113

    :pswitch_134
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenWidth:I

    iget-object v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mOldContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenWidth:I

    iput v2, v1, Landroid/graphics/Rect;->right:I

    goto :goto_113

    :pswitch_data_148
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_68
        :pswitch_c0
    .end packed-switch

    :sswitch_data_152
    .sparse-switch
        0x3 -> :sswitch_52
        0x5 -> :sswitch_5b
        0x30 -> :sswitch_3c
        0x50 -> :sswitch_45
    .end sparse-switch

    :sswitch_data_164
    .sparse-switch
        0x3 -> :sswitch_aa
        0x5 -> :sswitch_b3
        0x30 -> :sswitch_94
        0x50 -> :sswitch_9d
    .end sparse-switch

    :pswitch_data_176
    .packed-switch 0x3
        :pswitch_125
        :pswitch_113
        :pswitch_134
    .end packed-switch
.end method

.method private getContentsRect(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 6

    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    sparse-switch p1, :sswitch_data_28

    :goto_6
    return-void

    :sswitch_7
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabWidth:I

    sub-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Rect;->right:I

    goto :goto_6

    :sswitch_f
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabWidth:I

    add-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Rect;->left:I

    goto :goto_6

    :sswitch_17
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabHeight:I

    sub-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    goto :goto_6

    :sswitch_1f
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabHeight:I

    add-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Rect;->top:I

    goto :goto_6

    nop

    :sswitch_data_28
    .sparse-switch
        0x3 -> :sswitch_7
        0x5 -> :sswitch_f
        0x30 -> :sswitch_17
        0x50 -> :sswitch_1f
    .end sparse-switch
.end method

.method private getFixedFullRect(I)Landroid/graphics/Rect;
    .registers 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ToolkitTabDialog;->getFixedContentsRect(ILandroid/graphics/Rect;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ToolkitTabDialog;->getFullRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    return-object v1
.end method

.method private hideGuideView()V
    .registers 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mbShowGuideWindow:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideView:Lcom/android/server/am/ToolkitTabDialog$GuideView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideView:Lcom/android/server/am/ToolkitTabDialog$GuideView;

    invoke-virtual {v0}, Lcom/android/server/am/ToolkitTabDialog$GuideView;->dismiss()V

    :cond_e
    iput-boolean v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mbShowGuideWindow:Z

    iput-boolean v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mbMovedWindow:Z

    :cond_12
    return-void
.end method

.method private init()V
    .registers 6

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mWindowManager:Landroid/view/WindowManager;

    if-nez v1, :cond_12

    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mWindowManager:Landroid/view/WindowManager;

    :cond_12
    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x308

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x33

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    invoke-direct {p0}, Lcom/android/server/am/ToolkitTabDialog;->reloadResource()V

    new-instance v1, Lcom/android/server/am/ToolkitTabWidget;

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/am/ToolkitTabWidget;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabWidget:Lcom/android/server/am/ToolkitTabWidget;

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabWidget:Lcom/android/server/am/ToolkitTabWidget;

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabItemFocusChangeListener:Lcom/android/server/am/ToolkitTabWidget$OnToolkitTabItemListener;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ToolkitTabWidget;->setOnToolkitTabItemListener(Lcom/android/server/am/ToolkitTabWidget$OnToolkitTabItemListener;)V

    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x8a2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const-string v1, "Toolkit/Tab"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/am/ToolkitTabDialog$GestureListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/am/ToolkitTabDialog$GestureListener;-><init>(Lcom/android/server/am/ToolkitTabDialog;Lcom/android/server/am/ToolkitTabDialog$1;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabDialog;->changeConfiguration()V

    return-void
.end method

.method private isFloatingMode()Z
    .registers 2

    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mMode:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private layout(I)V
    .registers 11

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    sparse-switch p1, :sswitch_data_a4

    :goto_c
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mWindowPos:Landroid/graphics/Point;

    iget v1, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mWindowPos:Landroid/graphics/Point;

    iget v1, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabWidth:I

    iput v0, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabHeight:I

    iput v0, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsView:Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsView:Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;->setBackgroundDrawableDirection(I)V

    :cond_29
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabWidget:Lcom/android/server/am/ToolkitTabWidget;

    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mGravity:I

    iget v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mMode:I

    iget v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabItemWidth:I

    iget v4, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabItemHeight:I

    iget v5, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabAppIconWidth:I

    iget v6, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabAppIconHeight:I

    iget-boolean v7, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollMode:Z

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ToolkitTabWidget;->changeConfiguration(IIIIIIZ)V

    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_57
    return-void

    :sswitch_58
    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenWidth:I

    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabWidth:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenHeight:I

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_c

    :sswitch_72
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenHeight:I

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_c

    :sswitch_86
    iput v1, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_c

    :sswitch_92
    iput v1, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenHeight:I

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabHeight:I

    sub-int/2addr v0, v1

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_c

    :sswitch_data_a4
    .sparse-switch
        0x3 -> :sswitch_72
        0x5 -> :sswitch_58
        0x30 -> :sswitch_86
        0x50 -> :sswitch_92
    .end sparse-switch
.end method

.method private layout(ILandroid/graphics/Rect;)V
    .registers 14

    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    packed-switch p1, :pswitch_data_88

    iget v9, p2, Landroid/graphics/Rect;->left:I

    iget v10, p2, Landroid/graphics/Rect;->top:I

    :goto_11
    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v10, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mWindowPos:Landroid/graphics/Point;

    iget v1, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mWindowPos:Landroid/graphics/Point;

    iget v1, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabWidth:I

    iput v0, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabHeight:I

    iput v0, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_79

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_3c
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsView:Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;->setBackgroundDrawableDirection(I)V

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabWidget:Lcom/android/server/am/ToolkitTabWidget;

    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mGravity:I

    iget v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mMode:I

    iget v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabItemWidth:I

    iget v4, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabItemHeight:I

    iget v5, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabAppIconWidth:I

    iget v6, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabAppIconHeight:I

    iget-boolean v7, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollMode:Z

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ToolkitTabWidget;->changeConfiguration(IIIIIIZ)V

    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6f
    return-void

    :pswitch_70
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabWidth:I

    sub-int v9, v0, v1

    iget v10, p2, Landroid/graphics/Rect;->top:I

    goto :goto_11

    :cond_79
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_3c

    :pswitch_data_88
    .packed-switch 0x3
        :pswitch_70
    .end packed-switch
.end method

.method private makeViews(II)V
    .registers 12

    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v6, -0x2

    const/4 v5, 0x1

    const/4 v1, -0x2

    const/4 v0, -0x2

    iget-boolean v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mbSetContentsView:Z

    if-eqz v2, :cond_c

    :goto_b
    return-void

    :cond_c
    iput-boolean v5, p0, Lcom/android/server/am/ToolkitTabDialog;->mbSetContentsView:Z

    new-instance v2, Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;

    iget-object v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;-><init>(Lcom/android/server/am/ToolkitTabDialog;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsView:Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_20
    iget v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mGravity:I

    sparse-switch v2, :sswitch_data_de

    new-instance v2, Landroid/widget/ScrollView;

    iget-object v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsView:Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;

    invoke-virtual {v2, v5}, Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;->setOrientation(I)V

    iget-boolean v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollMode:Z

    if-eqz v2, :cond_3c

    iget v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabArrowWidth:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr p2, v2

    :cond_3c
    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabItemWidth:I

    :goto_3e
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabWidget:Lcom/android/server/am/ToolkitTabWidget;

    iget-object v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x108091f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/ToolkitTabWidget;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabWidget:Lcom/android/server/am/ToolkitTabWidget;

    invoke-virtual {v2, v3, v6, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollView:Landroid/view/ViewGroup;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollView:Landroid/view/ViewGroup;

    new-instance v3, Lcom/android/server/am/ToolkitTabDialog$2;

    invoke-direct {v3, p0}, Lcom/android/server/am/ToolkitTabDialog$2;-><init>(Lcom/android/server/am/ToolkitTabDialog;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v2, Lcom/android/server/am/ToolkitTabDialog$ArrowView;

    iget-object v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/server/am/ToolkitTabDialog;->mGravity:I

    invoke-direct {v2, p0, v3, v7, v4}, Lcom/android/server/am/ToolkitTabDialog$ArrowView;-><init>(Lcom/android/server/am/ToolkitTabDialog;Landroid/content/Context;II)V

    iput-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mArrowScrollUpView:Lcom/android/server/am/ToolkitTabDialog$ArrowView;

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsView:Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;

    iget-object v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mArrowScrollUpView:Lcom/android/server/am/ToolkitTabDialog$ArrowView;

    invoke-virtual {v2, v3, v1, v0}, Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;->addView(Landroid/view/View;II)V

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsView:Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;

    iget-object v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, p1, p2}, Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;->addView(Landroid/view/View;II)V

    new-instance v2, Lcom/android/server/am/ToolkitTabDialog$ArrowView;

    iget-object v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/server/am/ToolkitTabDialog;->mGravity:I

    invoke-direct {v2, p0, v3, v5, v4}, Lcom/android/server/am/ToolkitTabDialog$ArrowView;-><init>(Lcom/android/server/am/ToolkitTabDialog;Landroid/content/Context;II)V

    iput-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mArrowScrollDownView:Lcom/android/server/am/ToolkitTabDialog$ArrowView;

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsView:Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;

    iget-object v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mArrowScrollDownView:Lcom/android/server/am/ToolkitTabDialog$ArrowView;

    invoke-virtual {v2, v3, v1, v0}, Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;->addView(Landroid/view/View;II)V

    iget-boolean v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollMode:Z

    if-nez v2, :cond_a0

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mArrowScrollDownView:Lcom/android/server/am/ToolkitTabDialog$ArrowView;

    invoke-virtual {v2, v8}, Lcom/android/server/am/ToolkitTabDialog$ArrowView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mArrowScrollUpView:Lcom/android/server/am/ToolkitTabDialog$ArrowView;

    invoke-virtual {v2, v8}, Lcom/android/server/am/ToolkitTabDialog$ArrowView;->setVisibility(I)V

    :cond_a0
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsView:Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;

    iget-object v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabWidgetBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;->setCustomBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mArrowScrollUpView:Lcom/android/server/am/ToolkitTabDialog$ArrowView;

    new-instance v3, Lcom/android/server/am/ToolkitTabDialog$3;

    invoke-direct {v3, p0}, Lcom/android/server/am/ToolkitTabDialog$3;-><init>(Lcom/android/server/am/ToolkitTabDialog;)V

    invoke-virtual {v2, v3}, Lcom/android/server/am/ToolkitTabDialog$ArrowView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mArrowScrollDownView:Lcom/android/server/am/ToolkitTabDialog$ArrowView;

    new-instance v3, Lcom/android/server/am/ToolkitTabDialog$4;

    invoke-direct {v3, p0}, Lcom/android/server/am/ToolkitTabDialog$4;-><init>(Lcom/android/server/am/ToolkitTabDialog;)V

    invoke-virtual {v2, v3}, Lcom/android/server/am/ToolkitTabDialog$ArrowView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsView:Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;

    invoke-virtual {p0, v2}, Lcom/android/server/am/ToolkitTabDialog;->setContentView(Landroid/view/View;)V

    goto/16 :goto_b

    :sswitch_c2
    new-instance v2, Landroid/widget/HorizontalScrollView;

    iget-object v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsView:Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;

    invoke-virtual {v2, v7}, Lcom/android/server/am/ToolkitTabDialog$CustomLinearLayout;->setOrientation(I)V

    iget-boolean v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollMode:Z

    if-eqz v2, :cond_d9

    iget v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabArrowWidth:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr p1, v2

    :cond_d9
    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabItemHeight:I

    goto/16 :goto_3e

    nop

    :sswitch_data_de
    .sparse-switch
        0x30 -> :sswitch_c2
        0x50 -> :sswitch_c2
    .end sparse-switch
.end method

.method private moveToolkitWindow()V
    .registers 3

    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mMode:I

    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideMode:I

    if-eq v0, v1, :cond_d

    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideMode:I

    iput v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mMode:I

    invoke-direct {p0}, Lcom/android/server/am/ToolkitTabDialog;->notifyModeChange()V

    :cond_d
    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideGravity:I

    invoke-direct {p0, v0}, Lcom/android/server/am/ToolkitTabDialog;->setGravity(I)V

    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideMode:I

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideContentsRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/am/ToolkitTabDialog;->changeConfiguration(Landroid/graphics/Rect;)V

    :goto_1b
    return-void

    :cond_1c
    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mGravity:I

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ToolkitTabDialog;->getFixedContentsRect(ILandroid/graphics/Rect;)V

    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideUiStatus:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/ToolkitTabDialog;->changeUiStatus(I)V

    goto :goto_1b
.end method

.method private notifyContentsSizeChange()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mChangeListener:Lcom/android/server/am/ToolkitTabDialog$OnStatusChangeListener;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mChangeListener:Lcom/android/server/am/ToolkitTabDialog$OnStatusChangeListener;

    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabDialog;->getContentsRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/am/ToolkitTabDialog$OnStatusChangeListener;->onContentsSizeChange(Landroid/graphics/Rect;)V

    :cond_d
    return-void
.end method

.method private notifyFocusTabChange(Ljava/lang/Object;Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mChangeListener:Lcom/android/server/am/ToolkitTabDialog$OnStatusChangeListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mChangeListener:Lcom/android/server/am/ToolkitTabDialog$OnStatusChangeListener;

    invoke-interface {v0, p1, p2}, Lcom/android/server/am/ToolkitTabDialog$OnStatusChangeListener;->onFocusTabChange(Ljava/lang/Object;Z)V

    :cond_9
    return-void
.end method

.method private notifyModeChange()V
    .registers 3

    invoke-direct {p0}, Lcom/android/server/am/ToolkitTabDialog;->changeBackground()V

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mChangeListener:Lcom/android/server/am/ToolkitTabDialog$OnStatusChangeListener;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mChangeListener:Lcom/android/server/am/ToolkitTabDialog$OnStatusChangeListener;

    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mMode:I

    invoke-interface {v0, v1}, Lcom/android/server/am/ToolkitTabDialog$OnStatusChangeListener;->onModeChange(I)V

    :cond_e
    return-void
.end method

.method private notifyOrientationChange(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mChangeListener:Lcom/android/server/am/ToolkitTabDialog$OnStatusChangeListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mChangeListener:Lcom/android/server/am/ToolkitTabDialog$OnStatusChangeListener;

    invoke-interface {v0, p1}, Lcom/android/server/am/ToolkitTabDialog$OnStatusChangeListener;->onOrientationChange(I)V

    :cond_9
    return-void
.end method

.method private notifyTabItemChange(Ljava/lang/Object;I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mChangeListener:Lcom/android/server/am/ToolkitTabDialog$OnStatusChangeListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mChangeListener:Lcom/android/server/am/ToolkitTabDialog$OnStatusChangeListener;

    invoke-interface {v0, p1, p2}, Lcom/android/server/am/ToolkitTabDialog$OnStatusChangeListener;->onTabItemChange(Ljava/lang/Object;I)V

    :cond_9
    return-void
.end method

.method private notifyUiStatus()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mChangeListener:Lcom/android/server/am/ToolkitTabDialog$OnStatusChangeListener;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mChangeListener:Lcom/android/server/am/ToolkitTabDialog$OnStatusChangeListener;

    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mUiStatus:I

    invoke-interface {v0, v1}, Lcom/android/server/am/ToolkitTabDialog$OnStatusChangeListener;->onUiStatusChange(I)V

    :cond_b
    return-void
.end method

.method private reloadResource()V
    .registers 4

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenWidth:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenHeight:I

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050102

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabHeight:I

    const v2, 0x1050103

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabWidth:I

    const v2, 0x1050104

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabContentsHeight:I

    const v2, 0x1050105

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabContentsWidth:I

    const v2, 0x10500ff

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabItemHeight:I

    const v2, 0x10500fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabItemWidth:I

    const v2, 0x1050101

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabAppIconHeight:I

    const v2, 0x1050100

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabAppIconWidth:I

    const v2, 0x1080919

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabWidgetBackground:Landroid/graphics/drawable/Drawable;

    const v2, 0x1050106

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabArrowWidth:I

    invoke-static {}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getStatusBarHeight()I

    move-result v2

    iput v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mStatusBarHeight:I

    return-void
.end method

.method private scroll(I)V
    .registers 7

    const/4 v4, 0x0

    iget v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_44

    packed-switch p1, :pswitch_data_82

    :cond_9
    :goto_9
    return-void

    :pswitch_a
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    iget v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabItemHeight:I

    add-int/2addr v2, v1

    iget-object v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabWidget:Lcom/android/server/am/ToolkitTabWidget;

    invoke-virtual {v3}, Lcom/android/server/am/ToolkitTabWidget;->getMeasuredHeight()I

    move-result v3

    if-ge v2, v3, :cond_9

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollView:Landroid/view/ViewGroup;

    check-cast v2, Landroid/widget/ScrollView;

    iget v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabItemHeight:I

    add-int/2addr v3, v1

    invoke-virtual {v2, v4, v3}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto :goto_9

    :pswitch_26
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    iget v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabItemHeight:I

    if-le v1, v2, :cond_3c

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollView:Landroid/view/ViewGroup;

    check-cast v2, Landroid/widget/ScrollView;

    iget v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabItemHeight:I

    sub-int v3, v1, v3

    invoke-virtual {v2, v4, v3}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto :goto_9

    :cond_3c
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollView:Landroid/view/ViewGroup;

    check-cast v2, Landroid/widget/ScrollView;

    invoke-virtual {v2, v4, v4}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto :goto_9

    :cond_44
    packed-switch p1, :pswitch_data_8a

    goto :goto_9

    :pswitch_48
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    iget v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabItemWidth:I

    if-le v0, v2, :cond_7a

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollView:Landroid/view/ViewGroup;

    check-cast v2, Landroid/widget/HorizontalScrollView;

    iget v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabItemWidth:I

    sub-int v3, v0, v3

    invoke-virtual {v2, v3, v4}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_9

    :pswitch_5e
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    iget v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabItemWidth:I

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabWidget:Lcom/android/server/am/ToolkitTabWidget;

    invoke-virtual {v3}, Lcom/android/server/am/ToolkitTabWidget;->getMeasuredWidth()I

    move-result v3

    if-ge v2, v3, :cond_9

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollView:Landroid/view/ViewGroup;

    check-cast v2, Landroid/widget/HorizontalScrollView;

    iget v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabItemWidth:I

    add-int/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_9

    :cond_7a
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollView:Landroid/view/ViewGroup;

    check-cast v2, Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2, v4, v4}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_9

    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_26
        :pswitch_a
    .end packed-switch

    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_48
        :pswitch_5e
    .end packed-switch
.end method

.method private setGravity(I)V
    .registers 3

    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mGravity:I

    if-ne v0, p1, :cond_5

    :goto_4
    return-void

    :cond_5
    iput p1, p0, Lcom/android/server/am/ToolkitTabDialog;->mGravity:I

    goto :goto_4
.end method

.method private showGuideWindow(Landroid/view/MotionEvent;)Z
    .registers 16

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    float-to-int v9, v11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    float-to-int v10, v11

    iget v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mbGuideInitX:I

    sub-int v3, v9, v11

    iget v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mbGuideInitY:I

    sub-int v4, v10, v11

    iget v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenWidth:I

    div-int/lit8 v1, v11, 0xa

    iget v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenHeight:I

    div-int/lit8 v2, v11, 0xa

    iget-object v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideContentsRect:Landroid/graphics/Rect;

    iget-object v12, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v11, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v11

    if-ge v11, v1, :cond_2f

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v11

    if-ge v11, v2, :cond_2f

    const/4 v11, 0x0

    :goto_2e
    return v11

    :cond_2f
    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabDialog;->getFullRect()Landroid/graphics/Rect;

    move-result-object v5

    iget-object v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideView:Lcom/android/server/am/ToolkitTabDialog$GuideView;

    if-nez v11, :cond_40

    new-instance v11, Lcom/android/server/am/ToolkitTabDialog$GuideView;

    iget-object v12, p0, Lcom/android/server/am/ToolkitTabDialog;->mContext:Landroid/content/Context;

    invoke-direct {v11, p0, v12}, Lcom/android/server/am/ToolkitTabDialog$GuideView;-><init>(Lcom/android/server/am/ToolkitTabDialog;Landroid/content/Context;)V

    iput-object v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideView:Lcom/android/server/am/ToolkitTabDialog$GuideView;

    :cond_40
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mbMovedWindow:Z

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    iget v11, v5, Landroid/graphics/Rect;->left:I

    if-gez v11, :cond_a2

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v8

    const/4 v11, 0x0

    iput v11, v5, Landroid/graphics/Rect;->left:I

    iput v8, v5, Landroid/graphics/Rect;->right:I

    :cond_53
    :goto_53
    iget v11, v5, Landroid/graphics/Rect;->top:I

    if-gez v11, :cond_b6

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v6

    const/4 v11, 0x0

    iput v11, v5, Landroid/graphics/Rect;->top:I

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    :cond_60
    :goto_60
    iget-object v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mWindowPos:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    add-int v7, v11, v9

    iget v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenWidth:I

    iget v12, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabItemWidth:I

    mul-int/lit8 v12, v12, 0x2

    sub-int/2addr v11, v12

    if-lt v7, v11, :cond_c7

    const/4 v11, 0x1

    iput v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideMode:I

    const/4 v11, 0x5

    iput v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideGravity:I

    const/4 v11, 0x1

    iput v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideUiStatus:I

    iget-object v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideContentsRect:Landroid/graphics/Rect;

    iget v12, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenWidth:I

    iput v12, v11, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideContentsRect:Landroid/graphics/Rect;

    iget v12, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenWidth:I

    iput v12, v11, Landroid/graphics/Rect;->right:I

    iget-object v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideContentsRect:Landroid/graphics/Rect;

    iget v12, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenHeight:I

    iget v13, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabContentsHeight:I

    sub-int/2addr v12, v13

    iput v12, v11, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideContentsRect:Landroid/graphics/Rect;

    iget v12, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenHeight:I

    iput v12, v11, Landroid/graphics/Rect;->bottom:I

    iget v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideGravity:I

    iget-object v12, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideContentsRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v11, v12}, Lcom/android/server/am/ToolkitTabDialog;->getFullRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    :goto_9b
    iget-object v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideView:Lcom/android/server/am/ToolkitTabDialog$GuideView;

    invoke-virtual {v11, v5}, Lcom/android/server/am/ToolkitTabDialog$GuideView;->show(Landroid/graphics/Rect;)V

    const/4 v11, 0x1

    goto :goto_2e

    :cond_a2
    iget v11, v5, Landroid/graphics/Rect;->right:I

    iget v12, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenWidth:I

    if-le v11, v12, :cond_53

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenWidth:I

    sub-int/2addr v11, v8

    iput v11, v5, Landroid/graphics/Rect;->left:I

    iget v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenWidth:I

    iput v11, v5, Landroid/graphics/Rect;->right:I

    goto :goto_53

    :cond_b6
    iget v11, v5, Landroid/graphics/Rect;->bottom:I

    iget v12, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenHeight:I

    if-le v11, v12, :cond_60

    const/4 v11, 0x0

    iget v12, v5, Landroid/graphics/Rect;->bottom:I

    iget v13, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenHeight:I

    sub-int/2addr v12, v13

    neg-int v12, v12

    invoke-virtual {v5, v11, v12}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_60

    :cond_c7
    iget v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabItemWidth:I

    mul-int/lit8 v11, v11, 0x2

    if-ge v7, v11, :cond_f8

    const/4 v11, 0x1

    iput v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideMode:I

    const/4 v11, 0x3

    iput v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideGravity:I

    const/4 v11, 0x1

    iput v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideUiStatus:I

    iget-object v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideContentsRect:Landroid/graphics/Rect;

    const/4 v12, 0x0

    iput v12, v11, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideContentsRect:Landroid/graphics/Rect;

    const/4 v12, 0x0

    iput v12, v11, Landroid/graphics/Rect;->right:I

    iget-object v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideContentsRect:Landroid/graphics/Rect;

    iget v12, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenHeight:I

    iget v13, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabContentsHeight:I

    sub-int/2addr v12, v13

    iput v12, v11, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideContentsRect:Landroid/graphics/Rect;

    iget v12, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenHeight:I

    iput v12, v11, Landroid/graphics/Rect;->bottom:I

    iget v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideGravity:I

    iget-object v12, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideContentsRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v11, v12}, Lcom/android/server/am/ToolkitTabDialog;->getFullRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    goto :goto_9b

    :cond_f8
    iget v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mUiStatus:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_12e

    iget v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenWidth:I

    div-int/lit8 v11, v11, 0x2

    if-le v7, v11, :cond_118

    const/4 v11, 0x1

    iput v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideMode:I

    const/4 v11, 0x5

    iput v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideGravity:I

    const/4 v11, 0x2

    iput v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideUiStatus:I

    const/4 v11, 0x5

    invoke-direct {p0, v11}, Lcom/android/server/am/ToolkitTabDialog;->getFixedFullRect(I)Landroid/graphics/Rect;

    move-result-object v5

    const/4 v11, 0x5

    iget-object v12, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideContentsRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v11, v12}, Lcom/android/server/am/ToolkitTabDialog;->getFixedContentsRect(ILandroid/graphics/Rect;)V

    goto :goto_9b

    :cond_118
    const/4 v11, 0x1

    iput v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideMode:I

    const/4 v11, 0x3

    iput v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideGravity:I

    const/4 v11, 0x2

    iput v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideUiStatus:I

    const/4 v11, 0x3

    invoke-direct {p0, v11}, Lcom/android/server/am/ToolkitTabDialog;->getFixedFullRect(I)Landroid/graphics/Rect;

    move-result-object v5

    const/4 v11, 0x3

    iget-object v12, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideContentsRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v11, v12}, Lcom/android/server/am/ToolkitTabDialog;->getFixedContentsRect(ILandroid/graphics/Rect;)V

    goto/16 :goto_9b

    :cond_12e
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v11, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v1

    iput v11, v0, Landroid/graphics/Rect;->left:I

    iget v11, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v1

    iput v11, v0, Landroid/graphics/Rect;->right:I

    iget v11, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v2

    iput v11, v0, Landroid/graphics/Rect;->top:I

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v2

    iput v11, v0, Landroid/graphics/Rect;->bottom:I

    iget v11, v0, Landroid/graphics/Rect;->right:I

    iget v12, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenWidth:I

    if-lt v11, v12, :cond_169

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    iget v12, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenHeight:I

    if-lt v11, v12, :cond_169

    const/4 v11, 0x1

    iput v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideMode:I

    const/4 v11, 0x5

    iput v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideGravity:I

    const/4 v11, 0x2

    iput v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideUiStatus:I

    const/4 v11, 0x5

    invoke-direct {p0, v11}, Lcom/android/server/am/ToolkitTabDialog;->getFixedFullRect(I)Landroid/graphics/Rect;

    move-result-object v5

    const/4 v11, 0x5

    iget-object v12, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideContentsRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v11, v12}, Lcom/android/server/am/ToolkitTabDialog;->getFixedContentsRect(ILandroid/graphics/Rect;)V

    goto/16 :goto_9b

    :cond_169
    iget v11, v0, Landroid/graphics/Rect;->left:I

    if-gtz v11, :cond_189

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    iget v12, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenHeight:I

    if-lt v11, v12, :cond_189

    const/4 v11, 0x1

    iput v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideMode:I

    const/4 v11, 0x3

    iput v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideGravity:I

    const/4 v11, 0x2

    iput v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideUiStatus:I

    const/4 v11, 0x3

    invoke-direct {p0, v11}, Lcom/android/server/am/ToolkitTabDialog;->getFixedFullRect(I)Landroid/graphics/Rect;

    move-result-object v5

    const/4 v11, 0x3

    iget-object v12, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideContentsRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v11, v12}, Lcom/android/server/am/ToolkitTabDialog;->getFixedContentsRect(ILandroid/graphics/Rect;)V

    goto/16 :goto_9b

    :cond_189
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideMode:I

    const/4 v11, 0x2

    iput v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideUiStatus:I

    iget v11, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideGravity:I

    iget-object v12, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideContentsRect:Landroid/graphics/Rect;

    invoke-direct {p0, v11, v5, v12}, Lcom/android/server/am/ToolkitTabDialog;->getContentsRect(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_9b
.end method


# virtual methods
.method public addTab(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Z)Z
    .registers 6

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabWidget:Lcom/android/server/am/ToolkitTabWidget;

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabWidget:Lcom/android/server/am/ToolkitTabWidget;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/am/ToolkitTabWidget;->newTabSpec(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Z)Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ToolkitTabWidget;->addTab(Lcom/android/server/am/ToolkitTabWidget$TabSpec;)V

    invoke-direct {p0}, Lcom/android/server/am/ToolkitTabDialog;->calcScrollMode()V

    const/4 v0, 0x1

    return v0
.end method

.method public changeConfiguration()V
    .registers 5

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mOrientation:I

    if-ne v1, v0, :cond_12

    :goto_11
    return-void

    :cond_12
    invoke-direct {p0}, Lcom/android/server/am/ToolkitTabDialog;->reloadResource()V

    iput v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mOrientation:I

    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mOrientation:I

    if-ne v1, v3, :cond_59

    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mMode:I

    if-nez v1, :cond_21

    iput v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mMode:I

    :cond_21
    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mGravity:I

    sparse-switch v1, :sswitch_data_84

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The old orientation is LANDSCAPE. But gravity is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mGravity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_41
    const/16 v1, 0x50

    invoke-direct {p0, v1}, Lcom/android/server/am/ToolkitTabDialog;->setGravity(I)V

    :goto_46
    :sswitch_46
    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mGravity:I

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/ToolkitTabDialog;->getFixedContentsRect(ILandroid/graphics/Rect;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mbSetContentsView:Z

    invoke-direct {p0}, Lcom/android/server/am/ToolkitTabDialog;->calcScrollMode()V

    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mUiStatus:I

    invoke-direct {p0, v1, v3}, Lcom/android/server/am/ToolkitTabDialog;->changeUiStatus(IZ)V

    goto :goto_11

    :cond_59
    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mGravity:I

    sparse-switch v1, :sswitch_data_96

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The old orientation is PORTRAIT. But gravity is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mGravity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_79
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/server/am/ToolkitTabDialog;->setGravity(I)V

    goto :goto_46

    :sswitch_7e
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/android/server/am/ToolkitTabDialog;->setGravity(I)V

    goto :goto_46

    nop

    :sswitch_data_84
    .sparse-switch
        0x3 -> :sswitch_41
        0x5 -> :sswitch_41
        0x30 -> :sswitch_46
        0x50 -> :sswitch_46
    .end sparse-switch

    :sswitch_data_96
    .sparse-switch
        0x3 -> :sswitch_46
        0x5 -> :sswitch_46
        0x30 -> :sswitch_79
        0x50 -> :sswitch_7e
    .end sparse-switch
.end method

.method public changeConfiguration(Landroid/graphics/Rect;)V
    .registers 5

    if-eqz p1, :cond_1d

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_7
    invoke-direct {p0}, Lcom/android/server/am/ToolkitTabDialog;->isFloatingMode()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabDialog;->getFullRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mGravity:I

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/ToolkitTabDialog;->layout(ILandroid/graphics/Rect;)V

    :goto_16
    invoke-direct {p0}, Lcom/android/server/am/ToolkitTabDialog;->calcScrollMode()V

    invoke-direct {p0}, Lcom/android/server/am/ToolkitTabDialog;->notifyContentsSizeChange()V

    return-void

    :cond_1d
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/ToolkitTabDialog;->getFixedContentsRect(ILandroid/graphics/Rect;)V

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mOldContentsRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/ToolkitTabDialog;->getFixedContentsRect(ILandroid/graphics/Rect;)V

    goto :goto_7

    :cond_31
    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mGravity:I

    invoke-direct {p0, v1}, Lcom/android/server/am/ToolkitTabDialog;->layout(I)V

    goto :goto_16
.end method

.method public changeUiStatus(I)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ToolkitTabDialog;->changeUiStatus(IZ)V

    return-void
.end method

.method public destroy()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/ToolkitTabDialog;->changeUiStatus(IZ)V

    return-void
.end method

.method public dismiss()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    :cond_9
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_58

    :cond_a
    :goto_a
    if-eqz v0, :cond_18

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_18

    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :cond_18
    return v1

    :pswitch_19
    iget v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mOrientation:I

    if-eq v2, v1, :cond_a

    iget v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mMode:I

    iput v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideMode:I

    iget v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mGravity:I

    iput v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mGuideGravity:I

    iput-boolean v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mbShowGuideWindow:Z

    iput-boolean v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mbMovedWindow:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mbGuideInitX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mbGuideInitY:I

    goto :goto_a

    :pswitch_38
    iget-boolean v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mbShowGuideWindow:Z

    if-eqz v2, :cond_47

    iget-boolean v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mbMovedWindow:Z

    if-eqz v2, :cond_47

    invoke-direct {p0}, Lcom/android/server/am/ToolkitTabDialog;->moveToolkitWindow()V

    invoke-direct {p0}, Lcom/android/server/am/ToolkitTabDialog;->hideGuideView()V

    const/4 v0, 0x0

    :cond_47
    iput-boolean v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mbMovedWindow:Z

    iput-boolean v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mbShowGuideWindow:Z

    goto :goto_a

    :pswitch_4c
    iget-boolean v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mbShowGuideWindow:Z

    if-eqz v2, :cond_a

    invoke-direct {p0, p1}, Lcom/android/server/am/ToolkitTabDialog;->showGuideWindow(Landroid/view/MotionEvent;)Z

    goto :goto_a

    :pswitch_54
    invoke-direct {p0}, Lcom/android/server/am/ToolkitTabDialog;->hideGuideView()V

    goto :goto_a

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_19
        :pswitch_38
        :pswitch_4c
        :pswitch_54
    .end packed-switch
.end method

.method public getContentsRect()Landroid/graphics/Rect;
    .registers 3

    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRectForFloating:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRectForFloating:Landroid/graphics/Rect;

    goto :goto_7
.end method

.method getFixedContentsRect(ILandroid/graphics/Rect;)V
    .registers 5

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_62

    :goto_4
    return-void

    :sswitch_5
    iput v1, p2, Landroid/graphics/Rect;->left:I

    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabContentsWidth:I

    iput v0, p2, Landroid/graphics/Rect;->right:I

    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenHeight:I

    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabContentsHeight:I

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->top:I

    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenHeight:I

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    :sswitch_17
    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenWidth:I

    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabContentsWidth:I

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->left:I

    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenWidth:I

    iput v0, p2, Landroid/graphics/Rect;->right:I

    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenHeight:I

    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabContentsHeight:I

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->top:I

    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenHeight:I

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    :sswitch_2e
    iput v1, p2, Landroid/graphics/Rect;->left:I

    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenWidth:I

    iput v0, p2, Landroid/graphics/Rect;->right:I

    iput v1, p2, Landroid/graphics/Rect;->top:I

    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabContentsHeight:I

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    :sswitch_3b
    iput v1, p2, Landroid/graphics/Rect;->left:I

    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenWidth:I

    iput v0, p2, Landroid/graphics/Rect;->right:I

    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenHeight:I

    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabContentsHeight:I

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->top:I

    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenHeight:I

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    :sswitch_4d
    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenWidth:I

    iput v0, p2, Landroid/graphics/Rect;->left:I

    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenWidth:I

    iput v0, p2, Landroid/graphics/Rect;->right:I

    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenHeight:I

    iget v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabContentsHeight:I

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->top:I

    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mScreenHeight:I

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    nop

    :sswitch_data_62
    .sparse-switch
        0x0 -> :sswitch_4d
        0x3 -> :sswitch_5
        0x5 -> :sswitch_17
        0x30 -> :sswitch_2e
        0x50 -> :sswitch_3b
    .end sparse-switch
.end method

.method public getFullRect()Landroid/graphics/Rect;
    .registers 3

    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mGravity:I

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ToolkitTabDialog;->getFullRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getFullRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 7

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    sparse-switch p1, :sswitch_data_44

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The gravity is not defined "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/am/ToolkitTabDialog;->mGravity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_23
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabWidth:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    :goto_2a
    return-object v0

    :sswitch_2b
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabWidth:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    goto :goto_2a

    :sswitch_33
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabHeight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_2a

    :sswitch_3b
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabHeight:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    goto :goto_2a

    nop

    :sswitch_data_44
    .sparse-switch
        0x3 -> :sswitch_23
        0x5 -> :sswitch_2b
        0x30 -> :sswitch_33
        0x50 -> :sswitch_3b
    .end sparse-switch
.end method

.method public removeTab(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabWidget:Lcom/android/server/am/ToolkitTabWidget;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ToolkitTabWidget;->removeTab(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method public setFocusItem(Ljava/lang/Object;)V
    .registers 4

    if-nez p1, :cond_d

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollView:Landroid/view/ViewGroup;

    const/high16 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    :cond_d
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mTabWidget:Lcom/android/server/am/ToolkitTabWidget;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ToolkitTabWidget;->setFocusItem(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mScrollView:Landroid/view/ViewGroup;

    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    :cond_1d
    return-void
.end method

.method public setMode(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/ToolkitTabDialog;->mMode:I

    return-void
.end method

.method public setOnStatusChangeListener(Lcom/android/server/am/ToolkitTabDialog$OnStatusChangeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/ToolkitTabDialog;->mChangeListener:Lcom/android/server/am/ToolkitTabDialog$OnStatusChangeListener;

    return-void
.end method

.method public show()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_12

    new-instance v0, Lcom/android/server/am/ToolkitTabDialog$1;

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ToolkitTabDialog$1;-><init>(Lcom/android/server/am/ToolkitTabDialog;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    :cond_12
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
