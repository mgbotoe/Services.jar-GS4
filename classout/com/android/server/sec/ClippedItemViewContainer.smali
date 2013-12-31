.class public Lcom/android/server/sec/ClippedItemViewContainer;
.super Landroid/widget/FrameLayout;
.source "ClippedItemViewContainer.java"


# instance fields
.field private mColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mDisableColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mIsDisabled:Z

.field private mIsPressed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/sec/ClippedItemViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sec/ClippedItemViewContainer;->mIsPressed:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/sec/ClippedItemViewContainer;->mIsDisabled:Z

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const v1, 0x4d3abcff

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/server/sec/ClippedItemViewContainer;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v1, -0x8000

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/server/sec/ClippedItemViewContainer;->mDisableColorFilter:Landroid/graphics/PorterDuffColorFilter;

    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 15

    iget-boolean v9, p0, Lcom/android/server/sec/ClippedItemViewContainer;->mIsPressed:Z

    if-nez v9, :cond_a

    invoke-virtual {p0}, Lcom/android/server/sec/ClippedItemViewContainer;->isEnabled()Z

    move-result v9

    if-nez v9, :cond_a7

    :cond_a
    iget-object v2, p0, Lcom/android/server/sec/ClippedItemViewContainer;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Lcom/android/server/sec/ClippedItemViewContainer;->isEnabled()Z

    move-result v9

    if-nez v9, :cond_14

    iget-object v2, p0, Lcom/android/server/sec/ClippedItemViewContainer;->mDisableColorFilter:Landroid/graphics/PorterDuffColorFilter;

    :cond_14
    instance-of v9, p2, Landroid/widget/ImageView;

    if-eqz v9, :cond_3c

    move-object v6, p2

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_24

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_24
    invoke-virtual {v6}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2d

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_2d
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v7

    if-eqz v3, :cond_36

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    :cond_36
    if-eqz v1, :cond_3b

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    :cond_3b
    :goto_3b
    return v7

    :cond_3c
    instance-of v9, p2, Landroid/webkit/WebView;

    if-eqz v9, :cond_53

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_49

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_49
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v7

    if-eqz v1, :cond_3b

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_3b

    :cond_53
    instance-of v9, p2, Landroid/widget/TextView;

    if-eqz v9, :cond_a7

    move-object v8, p2

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_63

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_63
    invoke-virtual {v8}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x0

    :goto_68
    array-length v9, v4

    if-ge v5, v9, :cond_77

    aget-object v9, v4, v5

    if-eqz v9, :cond_74

    aget-object v9, v4, v5

    invoke-virtual {v9, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_74
    add-int/lit8 v5, v5, 0x1

    goto :goto_68

    :cond_77
    invoke-virtual {v8}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    invoke-virtual {v9}, Landroid/text/TextPaint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/text/TextPaint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v7

    if-eqz v1, :cond_8f

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    :cond_8f
    const/4 v5, 0x0

    :goto_90
    array-length v9, v4

    if-ge v5, v9, :cond_9f

    aget-object v9, v4, v5

    if-eqz v9, :cond_9c

    aget-object v9, v4, v5

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    :cond_9c
    add-int/lit8 v5, v5, 0x1

    goto :goto_90

    :cond_9f
    invoke-virtual {v8}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/text/TextPaint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_3b

    :cond_a7
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v7

    goto :goto_3b
.end method

.method protected drawableStateChanged()V
    .registers 7

    const/4 v5, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    invoke-virtual {p0}, Lcom/android/server/sec/ClippedItemViewContainer;->getDrawableState()[I

    move-result-object v2

    array-length v0, v2

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_31

    aget v3, v2, v1

    const v4, 0x101009e

    if-ne v3, v4, :cond_15

    iput-boolean v5, p0, Lcom/android/server/sec/ClippedItemViewContainer;->mIsDisabled:Z

    :cond_15
    aget v3, v2, v1

    const v4, 0x10100a7

    if-ne v3, v4, :cond_2e

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/sec/ClippedItemViewContainer;->mIsPressed:Z

    invoke-virtual {p0}, Lcom/android/server/sec/ClippedItemViewContainer;->invalidate()V

    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_2d

    const-string v3, "ClipboardServiceEx"

    const-string v4, "pressed !!! "

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    :goto_2d
    return-void

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_31
    iget-boolean v3, p0, Lcom/android/server/sec/ClippedItemViewContainer;->mIsPressed:Z

    if-nez v3, :cond_39

    iget-boolean v3, p0, Lcom/android/server/sec/ClippedItemViewContainer;->mIsDisabled:Z

    if-eqz v3, :cond_2d

    :cond_39
    iput-boolean v5, p0, Lcom/android/server/sec/ClippedItemViewContainer;->mIsPressed:Z

    iput-boolean v5, p0, Lcom/android/server/sec/ClippedItemViewContainer;->mIsDisabled:Z

    invoke-virtual {p0}, Lcom/android/server/sec/ClippedItemViewContainer;->invalidate()V

    goto :goto_2d
.end method
