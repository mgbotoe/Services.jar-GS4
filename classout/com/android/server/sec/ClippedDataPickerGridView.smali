.class public Lcom/android/server/sec/ClippedDataPickerGridView;
.super Landroid/widget/GridView;
.source "ClippedDataPickerGridView.java"


# instance fields
.field final ANIMATION_DELAY:I

.field final ANIMATION_TIME:I

.field COLUMN_COUNT:I

.field final TAG:Ljava/lang/String;

.field delCnt:I

.field delayTime:I

.field deleteItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field deleteItemSize:I

.field private isAnimating:Z

.field isDelete:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/sec/ClippedDataPickerGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    const/4 v3, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v1, "ClippedDataPickerGridView"

    iput-object v1, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->TAG:Ljava/lang/String;

    const/16 v1, 0x1f4

    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->ANIMATION_TIME:I

    iput v2, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->ANIMATION_DELAY:I

    iput v3, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->COLUMN_COUNT:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->deleteItemList:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->isDelete:Z

    iput v2, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->deleteItemSize:I

    iput v2, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->delCnt:I

    iput v2, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->delayTime:I

    iput-boolean v2, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->isAnimating:Z

    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_36

    const/4 v1, 0x4

    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->COLUMN_COUNT:I

    :cond_31
    :goto_31
    const/4 v1, 0x0

    invoke-virtual {p0, v3, v1}, Lcom/android/server/sec/ClippedDataPickerGridView;->setLayerType(ILandroid/graphics/Paint;)V

    return-void

    :cond_36
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_31

    iput v3, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->COLUMN_COUNT:I

    goto :goto_31
.end method

.method static synthetic access$002(Lcom/android/server/sec/ClippedDataPickerGridView;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->isAnimating:Z

    return p1
.end method

.method private checkDeleteCount(I)I
    .registers 7

    const/4 v1, 0x0

    move v2, p1

    iget v3, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->delCnt:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->delCnt:I

    iget v0, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->delCnt:I

    :goto_a
    iget v3, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->deleteItemSize:I

    if-ge v0, v3, :cond_29

    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->deleteItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_29

    iget v3, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->delCnt:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->delCnt:I

    move v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_29
    iget v3, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->deleteItemSize:I

    iget v4, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->delCnt:I

    if-le v3, v4, :cond_3d

    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->deleteItemList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->delCnt:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_3d
    return p1
.end method

.method private getAnim(III)Landroid/view/animation/TranslateAnimation;
    .registers 9

    const/4 v4, 0x0

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v2, p1

    int-to-float v3, p2

    invoke-direct {v0, v2, v4, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget v2, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->delayTime:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    move v1, p3

    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerGridView;->getFirstVisiblePosition()I

    move-result v2

    add-int v3, v1, v2

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->deleteItemList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v3, v2, :cond_3c

    new-instance v2, Lcom/android/server/sec/ClippedDataPickerGridView$1;

    invoke-direct {v2, p0, v1}, Lcom/android/server/sec/ClippedDataPickerGridView$1;-><init>(Lcom/android/server/sec/ClippedDataPickerGridView;I)V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_35
    :goto_35
    iget v2, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->delayTime:I

    add-int/lit8 v2, v2, 0x0

    iput v2, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->delayTime:I

    return-object v0

    :cond_3c
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerGridView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_35

    new-instance v2, Lcom/android/server/sec/ClippedDataPickerGridView$2;

    invoke-direct {v2, p0}, Lcom/android/server/sec/ClippedDataPickerGridView$2;-><init>(Lcom/android/server/sec/ClippedDataPickerGridView;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_35
.end method

.method private requestAnimation(Landroid/view/View;I)V
    .registers 10

    iget v4, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->delCnt:I

    add-int/2addr v4, p2

    iget v5, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->COLUMN_COUNT:I

    rem-int/2addr v4, v5

    iget v5, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->COLUMN_COUNT:I

    rem-int v5, p2, v5

    sub-int v2, v4, v5

    iget v4, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->delCnt:I

    add-int/2addr v4, p2

    iget v5, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->COLUMN_COUNT:I

    div-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget v5, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->COLUMN_COUNT:I

    div-int v5, p2, v5

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    sub-int v1, v4, v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    mul-int v0, v4, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    mul-int v3, v4, v1

    invoke-direct {p0, v0, v3, p2}, Lcom/android/server/sec/ClippedDataPickerGridView;->getAnim(III)Landroid/view/animation/TranslateAnimation;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public isLayoutAnimating()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->isAnimating:Z

    return v0
.end method

.method protected layoutChildren()V
    .registers 10

    const/4 v8, 0x0

    invoke-super {p0}, Landroid/widget/GridView;->layoutChildren()V

    iget-boolean v6, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->isDelete:Z

    if-eqz v6, :cond_40

    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerGridView;->getChildCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerGridView;->getFirstVisiblePosition()I

    move-result v0

    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->deleteItemList:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v3, v4

    iput v8, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->delCnt:I

    iput v8, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->delayTime:I

    const/4 v1, 0x0

    :goto_22
    if-ge v1, v2, :cond_3e

    add-int v6, v0, v1

    if-lt v6, v4, :cond_3b

    invoke-virtual {p0, v1}, Lcom/android/server/sec/ClippedDataPickerGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    add-int v6, v0, v1

    iget v7, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->delCnt:I

    sub-int v7, v3, v7

    if-ne v6, v7, :cond_38

    invoke-direct {p0, v3}, Lcom/android/server/sec/ClippedDataPickerGridView;->checkDeleteCount(I)I

    move-result v3

    :cond_38
    invoke-direct {p0, v5, v1}, Lcom/android/server/sec/ClippedDataPickerGridView;->requestAnimation(Landroid/view/View;I)V

    :cond_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_3e
    iput-boolean v8, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->isDelete:Z

    :cond_40
    return-void
.end method

.method public setDeletedItems(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->deleteItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_9
    if-lez v0, :cond_19

    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->deleteItemList:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_19
    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->deleteItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->deleteItemSize:I

    iget v1, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->deleteItemSize:I

    if-lez v1, :cond_28

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->isDelete:Z

    :cond_28
    return-void
.end method

.method public setLayoutAnimationState(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->isAnimating:Z

    if-eq v0, p1, :cond_6

    iput-boolean p1, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->isAnimating:Z

    :cond_6
    return-void
.end method
