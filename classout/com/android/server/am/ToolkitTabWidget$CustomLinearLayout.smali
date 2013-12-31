.class Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;
.super Landroid/widget/LinearLayout;
.source "ToolkitTabWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ToolkitTabWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomLinearLayout"
.end annotation


# instance fields
.field private mBackgroundDrawableDirection:I

.field private mCustomBgDrawable:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/android/server/am/ToolkitTabWidget;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ToolkitTabWidget;Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->this$0:Lcom/android/server/am/ToolkitTabWidget;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->mBackgroundDrawableDirection:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->mCustomBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->mCustomBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_10
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->mCustomBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_22

    iget v0, p0, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->mBackgroundDrawableDirection:I

    packed-switch v0, :pswitch_data_50

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->mCustomBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->mCustomBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_22
    :goto_22
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :pswitch_26
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->mCustomBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/high16 v0, -0x4080

    const/high16 v1, 0x3f80

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->mCustomBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_22

    :pswitch_data_50
    .packed-switch 0x3
        :pswitch_26
    .end packed-switch
.end method

.method public setBackgroundDrawableDirection(I)V
    .registers 3

    iget v0, p0, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->mBackgroundDrawableDirection:I

    if-eq v0, p1, :cond_9

    iput p1, p0, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->mBackgroundDrawableDirection:I

    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->invalidate()V

    :cond_9
    return-void
.end method

.method public setCustomBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 8

    if-eqz p1, :cond_6

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->mCustomBgDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v2, p1, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->mCustomBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->getDrawableState()[I

    move-result-object v1

    if-eqz v1, :cond_19

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->mCustomBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_19
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->mCustomBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->mCustomBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->setPadding(IIII)V

    goto :goto_6
.end method
