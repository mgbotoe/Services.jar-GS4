.class public Lcom/android/server/am/ToolkitTabWidget;
.super Landroid/widget/LinearLayout;
.source "ToolkitTabWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ToolkitTabWidget$1;,
        Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;,
        Lcom/android/server/am/ToolkitTabWidget$TabSpec;,
        Lcom/android/server/am/ToolkitTabWidget$OnToolkitTabItemListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ToolkitTabWidget"


# instance fields
.field private mAppIconHeight:I

.field private mAppIconWidth:I

.field private mCurrentTabSpec:Lcom/android/server/am/ToolkitTabWidget$TabSpec;

.field private mCustomBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mItemHeight:I

.field private mItemWidth:I

.field private mTabSpecs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ToolkitTabWidget$TabSpec;",
            ">;"
        }
    .end annotation
.end field

.field private mToolkitTabItemListener:Lcom/android/server/am/ToolkitTabWidget$OnToolkitTabItemListener;

.field private mWindowGravity:I

.field private mWindowMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mTabSpecs:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mWindowGravity:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mWindowMode:I

    invoke-direct {p0}, Lcom/android/server/am/ToolkitTabWidget;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mTabSpecs:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mWindowGravity:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mWindowMode:I

    invoke-direct {p0}, Lcom/android/server/am/ToolkitTabWidget;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mTabSpecs:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mWindowGravity:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mWindowMode:I

    invoke-direct {p0}, Lcom/android/server/am/ToolkitTabWidget;->init()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/ToolkitTabWidget;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/am/ToolkitTabWidget;)I
    .registers 2

    iget v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mAppIconHeight:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/am/ToolkitTabWidget;Ljava/lang/Object;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ToolkitTabWidget;->notifyFocusChange(Ljava/lang/Object;Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/am/ToolkitTabWidget;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/am/ToolkitTabWidget;Ljava/lang/Object;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ToolkitTabWidget;->notifyTabItemChange(Ljava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/server/am/ToolkitTabWidget;Lcom/android/server/am/ToolkitTabWidget$TabSpec;)Lcom/android/server/am/ToolkitTabWidget$TabSpec;
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/ToolkitTabWidget;->mCurrentTabSpec:Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/am/ToolkitTabWidget;)I
    .registers 2

    iget v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mWindowGravity:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/am/ToolkitTabWidget;)I
    .registers 2

    iget v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mItemWidth:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/am/ToolkitTabWidget;)I
    .registers 2

    iget v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mItemHeight:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/am/ToolkitTabWidget;)I
    .registers 2

    iget v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mAppIconWidth:I

    return v0
.end method

.method private findTabSpec(Ljava/lang/Object;)Lcom/android/server/am/ToolkitTabWidget$TabSpec;
    .registers 5

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabWidget;->mTabSpecs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    invoke-virtual {v1}, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->getObject()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_6

    :goto_18
    return-object v1

    :cond_19
    const/4 v1, 0x0

    goto :goto_18
.end method

.method private init()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mTabSpecs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/am/ToolkitTabWidget;->setShowDividers(I)V

    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/android/server/am/ToolkitTabWidget;->setPadding(IIII)V

    invoke-virtual {p0, v1}, Lcom/android/server/am/ToolkitTabWidget;->setWillNotDraw(Z)V

    return-void
.end method

.method private notifyFocusChange(Ljava/lang/Object;Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mToolkitTabItemListener:Lcom/android/server/am/ToolkitTabWidget$OnToolkitTabItemListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mToolkitTabItemListener:Lcom/android/server/am/ToolkitTabWidget$OnToolkitTabItemListener;

    invoke-interface {v0, p1, p2}, Lcom/android/server/am/ToolkitTabWidget$OnToolkitTabItemListener;->onFocusChange(Ljava/lang/Object;Z)V

    :cond_9
    return-void
.end method

.method private notifyTabItemChange(Ljava/lang/Object;I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mToolkitTabItemListener:Lcom/android/server/am/ToolkitTabWidget$OnToolkitTabItemListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mToolkitTabItemListener:Lcom/android/server/am/ToolkitTabWidget$OnToolkitTabItemListener;

    invoke-interface {v0, p1, p2}, Lcom/android/server/am/ToolkitTabWidget$OnToolkitTabItemListener;->onTabItemChange(Ljava/lang/Object;I)V

    :cond_9
    return-void
.end method

.method private notifyToogle()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mToolkitTabItemListener:Lcom/android/server/am/ToolkitTabWidget$OnToolkitTabItemListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mToolkitTabItemListener:Lcom/android/server/am/ToolkitTabWidget$OnToolkitTabItemListener;

    invoke-interface {v0}, Lcom/android/server/am/ToolkitTabWidget$OnToolkitTabItemListener;->onToggle()V

    :cond_9
    return-void
.end method

.method private updateTopItemBackground()V
    .registers 6

    const/4 v0, 0x1

    iget v3, p0, Lcom/android/server/am/ToolkitTabWidget;->mWindowMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_7

    :cond_6
    return-void

    :cond_7
    iget v3, p0, Lcom/android/server/am/ToolkitTabWidget;->mWindowGravity:I

    const/16 v4, 0x30

    if-eq v3, v4, :cond_6

    iget v3, p0, Lcom/android/server/am/ToolkitTabWidget;->mWindowGravity:I

    const/16 v4, 0x50

    if-eq v3, v4, :cond_6

    iget-object v3, p0, Lcom/android/server/am/ToolkitTabWidget;->mTabSpecs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    invoke-virtual {v2, v0}, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->updateTopItemBackground(Z)V

    const/4 v0, 0x0

    goto :goto_19
.end method


# virtual methods
.method public addTab(Lcom/android/server/am/ToolkitTabWidget$TabSpec;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mTabSpecs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ToolkitTabWidget;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/server/am/ToolkitTabWidget;->updateTopItemBackground()V

    return-void
.end method

.method public changeConfiguration(IIIIIIZ)V
    .registers 13

    const/4 v4, 0x1

    const/4 v0, 0x1

    iput p1, p0, Lcom/android/server/am/ToolkitTabWidget;->mWindowGravity:I

    iget v3, p0, Lcom/android/server/am/ToolkitTabWidget;->mWindowGravity:I

    sparse-switch v3, :sswitch_data_42

    :goto_9
    if-eqz p7, :cond_c

    const/4 v0, 0x0

    :cond_c
    iput p2, p0, Lcom/android/server/am/ToolkitTabWidget;->mWindowMode:I

    iput p3, p0, Lcom/android/server/am/ToolkitTabWidget;->mItemWidth:I

    iput p4, p0, Lcom/android/server/am/ToolkitTabWidget;->mItemHeight:I

    iput p5, p0, Lcom/android/server/am/ToolkitTabWidget;->mAppIconWidth:I

    iput p6, p0, Lcom/android/server/am/ToolkitTabWidget;->mAppIconHeight:I

    iget-object v3, p0, Lcom/android/server/am/ToolkitTabWidget;->mTabSpecs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    invoke-virtual {v2, v0}, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->changeConfiguration(Z)V

    const/4 v0, 0x0

    goto :goto_1c

    :sswitch_2d
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/am/ToolkitTabWidget;->setOrientation(I)V

    goto :goto_9

    :sswitch_33
    invoke-virtual {p0, v4}, Lcom/android/server/am/ToolkitTabWidget;->setOrientation(I)V

    goto :goto_9

    :cond_37
    iget-object v3, p0, Lcom/android/server/am/ToolkitTabWidget;->mCurrentTabSpec:Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    if-eqz v3, :cond_40

    iget-object v3, p0, Lcom/android/server/am/ToolkitTabWidget;->mCurrentTabSpec:Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->requestFocus(Z)V

    :cond_40
    return-void

    nop

    :sswitch_data_42
    .sparse-switch
        0x3 -> :sswitch_33
        0x5 -> :sswitch_33
        0x30 -> :sswitch_2d
        0x50 -> :sswitch_2d
    .end sparse-switch
.end method

.method public getTabCount()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mTabSpecs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public newTabSpec(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Z)Lcom/android/server/am/ToolkitTabWidget$TabSpec;
    .registers 10

    new-instance v0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ToolkitTabWidget$TabSpec;-><init>(Lcom/android/server/am/ToolkitTabWidget;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;ZLcom/android/server/am/ToolkitTabWidget$1;)V

    return-object v0
.end method

.method public notifyLongPressItem()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mToolkitTabItemListener:Lcom/android/server/am/ToolkitTabWidget$OnToolkitTabItemListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mToolkitTabItemListener:Lcom/android/server/am/ToolkitTabWidget$OnToolkitTabItemListener;

    invoke-interface {v0}, Lcom/android/server/am/ToolkitTabWidget$OnToolkitTabItemListener;->onLongPressItem()V

    :cond_9
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mCustomBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_22

    iget v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mWindowGravity:I

    packed-switch v0, :pswitch_data_50

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mCustomBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabWidget;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabWidget;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mCustomBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_22
    :goto_22
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :pswitch_26
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mCustomBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabWidget;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabWidget;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/high16 v0, -0x4080

    const/high16 v1, 0x3f80

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabWidget;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mCustomBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_22

    :pswitch_data_50
    .packed-switch 0x3
        :pswitch_26
    .end packed-switch
.end method

.method public removeTab(Ljava/lang/Object;)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/android/server/am/ToolkitTabWidget;->findTabSpec(Ljava/lang/Object;)Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    move-result-object v0

    if-nez v0, :cond_1f

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "is not found in tab list."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1f
    invoke-virtual {v0}, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/am/ToolkitTabWidget;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabWidget;->mTabSpecs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/server/am/ToolkitTabWidget;->updateTopItemBackground()V

    return-void
.end method

.method public setCustomBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 7

    const/4 v2, 0x0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ToolkitTabWidget;->mCustomBgDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabWidget;->mCustomBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabWidget;->mCustomBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_20

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/am/ToolkitTabWidget;->setPadding(IIII)V

    :goto_1f
    return-void

    :cond_20
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/android/server/am/ToolkitTabWidget;->setPadding(IIII)V

    goto :goto_1f
.end method

.method public setFocusItem(Lcom/android/server/am/ToolkitTabWidget$TabSpec;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mCurrentTabSpec:Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    if-ne v0, p1, :cond_8

    invoke-direct {p0}, Lcom/android/server/am/ToolkitTabWidget;->notifyToogle()V

    :goto_7
    return-void

    :cond_8
    iput-object p1, p0, Lcom/android/server/am/ToolkitTabWidget;->mCurrentTabSpec:Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->requestFocus(Z)V

    goto :goto_7
.end method

.method public setFocusItem(Ljava/lang/Object;)V
    .registers 5

    const/4 v1, 0x0

    if-nez p1, :cond_10

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mCurrentTabSpec:Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mCurrentTabSpec:Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->requestFocus(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mCurrentTabSpec:Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    :cond_f
    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mCurrentTabSpec:Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mCurrentTabSpec:Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    invoke-virtual {v0}, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->getObject()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_f

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mCurrentTabSpec:Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->requestFocus(Z)V

    :cond_21
    invoke-direct {p0, p1}, Lcom/android/server/am/ToolkitTabWidget;->findTabSpec(Ljava/lang/Object;)Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mCurrentTabSpec:Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mCurrentTabSpec:Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    if-nez v0, :cond_44

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is not found in tab list."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_44
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget;->mCurrentTabSpec:Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->requestFocus(Z)V

    goto :goto_f
.end method

.method public setOnToolkitTabItemListener(Lcom/android/server/am/ToolkitTabWidget$OnToolkitTabItemListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/ToolkitTabWidget;->mToolkitTabItemListener:Lcom/android/server/am/ToolkitTabWidget$OnToolkitTabItemListener;

    return-void
.end method
