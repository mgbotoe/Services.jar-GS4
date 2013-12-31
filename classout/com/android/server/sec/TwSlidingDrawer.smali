.class public Lcom/android/server/sec/TwSlidingDrawer;
.super Landroid/widget/SlidingDrawer;
.source "TwSlidingDrawer.java"


# instance fields
.field private mHandle:Landroid/view/View;

.field private mHandleId:I

.field public mTouched:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/sec/TwSlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v3, p0, Lcom/android/server/sec/TwSlidingDrawer;->mTouched:Z

    sget-object v2, Lcom/android/internal/R$styleable;->SlidingDrawer:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-nez v1, :cond_1b

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The handle attribute is required and must refer to a valid child."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1b
    iput v1, p0, Lcom/android/server/sec/TwSlidingDrawer;->mHandleId:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 3

    iget v0, p0, Lcom/android/server/sec/TwSlidingDrawer;->mHandleId:I

    invoke-virtual {p0, v0}, Lcom/android/server/sec/TwSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sec/TwSlidingDrawer;->mHandle:Landroid/view/View;

    iget-object v0, p0, Lcom/android/server/sec/TwSlidingDrawer;->mHandle:Landroid/view/View;

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The handle attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    invoke-super {p0}, Landroid/widget/SlidingDrawer;->onFinishInflate()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    new-instance v0, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/sec/TwSlidingDrawer;->mHandle:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/server/sec/TwSlidingDrawer;->getTop()I

    move-result v5

    iget-object v3, p0, Lcom/android/server/sec/TwSlidingDrawer;->mHandle:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/server/sec/TwSlidingDrawer;->getBottom()I

    move-result v6

    invoke-direct {v0, v4, v5, v3, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz v0, :cond_3a

    float-to-int v3, v1

    float-to-int v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_3a

    const/4 v3, 0x0

    :goto_39
    return v3

    :cond_3a
    invoke-super {p0, p1}, Landroid/widget/SlidingDrawer;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_39
.end method
