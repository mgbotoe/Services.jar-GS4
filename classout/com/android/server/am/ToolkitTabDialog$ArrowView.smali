.class Lcom/android/server/am/ToolkitTabDialog$ArrowView;
.super Landroid/widget/LinearLayout;
.source "ToolkitTabDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ToolkitTabDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArrowView"
.end annotation


# static fields
.field static final SCROLL_DOWN:I = 0x1

.field static final SCROLL_UP:I


# instance fields
.field private mImageView:Landroid/widget/ImageView;

.field private mMode:I

.field final synthetic this$0:Lcom/android/server/am/ToolkitTabDialog;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ToolkitTabDialog;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/am/ToolkitTabDialog$ArrowView;->this$0:Lcom/android/server/am/ToolkitTabDialog;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ToolkitTabDialog$ArrowView;->mMode:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ToolkitTabDialog;Landroid/content/Context;II)V
    .registers 12

    const/4 v4, 0x1

    const/4 v6, 0x2

    const/4 v5, -0x2

    iput-object p1, p0, Lcom/android/server/am/ToolkitTabDialog$ArrowView;->this$0:Lcom/android/server/am/ToolkitTabDialog;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/am/ToolkitTabDialog$ArrowView;->mMode:I

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput p3, p0, Lcom/android/server/am/ToolkitTabDialog$ArrowView;->mMode:I

    invoke-virtual {p0, v4}, Lcom/android/server/am/ToolkitTabDialog$ArrowView;->setClickable(Z)V

    sparse-switch p4, :sswitch_data_a6

    :goto_15
    invoke-virtual {p0, v0}, Lcom/android/server/am/ToolkitTabDialog$ArrowView;->setBackgroundResource(I)V

    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/server/am/ToolkitTabDialog$ArrowView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/am/ToolkitTabDialog$ArrowView;->mImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/server/am/ToolkitTabDialog$ArrowView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/android/server/am/ToolkitTabDialog$ArrowView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v3, 0x108091f

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    sparse-switch p4, :sswitch_data_b8

    :goto_36
    return-void

    :sswitch_37
    if-nez p3, :cond_44

    const v1, 0x1080928

    const v0, 0x1080925

    :goto_3f
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/am/ToolkitTabDialog$ArrowView;->setOrientation(I)V

    goto :goto_15

    :cond_44
    const v1, 0x1080929

    const v0, 0x1080924

    goto :goto_3f

    :sswitch_4b
    if-nez p3, :cond_57

    const v1, 0x108092a

    const v0, 0x1080925

    :goto_53
    invoke-virtual {p0, v4}, Lcom/android/server/am/ToolkitTabDialog$ArrowView;->setOrientation(I)V

    goto :goto_15

    :cond_57
    const v1, 0x1080926

    const v0, 0x1080924

    goto :goto_53

    :sswitch_5e
    if-nez p3, :cond_71

    iget-object v3, p0, Lcom/android/server/am/ToolkitTabDialog$ArrowView;->mImageView:Landroid/widget/ImageView;

    #getter for: Lcom/android/server/am/ToolkitTabDialog;->mTabItemHeight:I
    invoke-static {p1}, Lcom/android/server/am/ToolkitTabDialog;->access$1000(Lcom/android/server/am/ToolkitTabDialog;)I

    move-result v4

    invoke-virtual {p0, v3, v5, v4}, Lcom/android/server/am/ToolkitTabDialog$ArrowView;->addView(Landroid/view/View;II)V

    #getter for: Lcom/android/server/am/ToolkitTabDialog;->mTabItemHeight:I
    invoke-static {p1}, Lcom/android/server/am/ToolkitTabDialog;->access$1000(Lcom/android/server/am/ToolkitTabDialog;)I

    move-result v3

    invoke-virtual {p0, v2, v6, v3}, Lcom/android/server/am/ToolkitTabDialog$ArrowView;->addView(Landroid/view/View;II)V

    goto :goto_36

    :cond_71
    #getter for: Lcom/android/server/am/ToolkitTabDialog;->mTabItemHeight:I
    invoke-static {p1}, Lcom/android/server/am/ToolkitTabDialog;->access$1000(Lcom/android/server/am/ToolkitTabDialog;)I

    move-result v3

    invoke-virtual {p0, v2, v6, v3}, Lcom/android/server/am/ToolkitTabDialog$ArrowView;->addView(Landroid/view/View;II)V

    iget-object v3, p0, Lcom/android/server/am/ToolkitTabDialog$ArrowView;->mImageView:Landroid/widget/ImageView;

    #getter for: Lcom/android/server/am/ToolkitTabDialog;->mTabItemHeight:I
    invoke-static {p1}, Lcom/android/server/am/ToolkitTabDialog;->access$1000(Lcom/android/server/am/ToolkitTabDialog;)I

    move-result v4

    invoke-virtual {p0, v3, v5, v4}, Lcom/android/server/am/ToolkitTabDialog$ArrowView;->addView(Landroid/view/View;II)V

    goto :goto_36

    :sswitch_82
    if-nez p3, :cond_95

    iget-object v3, p0, Lcom/android/server/am/ToolkitTabDialog$ArrowView;->mImageView:Landroid/widget/ImageView;

    #getter for: Lcom/android/server/am/ToolkitTabDialog;->mTabItemWidth:I
    invoke-static {p1}, Lcom/android/server/am/ToolkitTabDialog;->access$1100(Lcom/android/server/am/ToolkitTabDialog;)I

    move-result v4

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/am/ToolkitTabDialog$ArrowView;->addView(Landroid/view/View;II)V

    #getter for: Lcom/android/server/am/ToolkitTabDialog;->mTabItemWidth:I
    invoke-static {p1}, Lcom/android/server/am/ToolkitTabDialog;->access$1100(Lcom/android/server/am/ToolkitTabDialog;)I

    move-result v3

    invoke-virtual {p0, v2, v3, v6}, Lcom/android/server/am/ToolkitTabDialog$ArrowView;->addView(Landroid/view/View;II)V

    goto :goto_36

    :cond_95
    #getter for: Lcom/android/server/am/ToolkitTabDialog;->mTabItemWidth:I
    invoke-static {p1}, Lcom/android/server/am/ToolkitTabDialog;->access$1100(Lcom/android/server/am/ToolkitTabDialog;)I

    move-result v3

    invoke-virtual {p0, v2, v3, v6}, Lcom/android/server/am/ToolkitTabDialog$ArrowView;->addView(Landroid/view/View;II)V

    iget-object v3, p0, Lcom/android/server/am/ToolkitTabDialog$ArrowView;->mImageView:Landroid/widget/ImageView;

    #getter for: Lcom/android/server/am/ToolkitTabDialog;->mTabItemWidth:I
    invoke-static {p1}, Lcom/android/server/am/ToolkitTabDialog;->access$1100(Lcom/android/server/am/ToolkitTabDialog;)I

    move-result v4

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/am/ToolkitTabDialog$ArrowView;->addView(Landroid/view/View;II)V

    goto :goto_36

    :sswitch_data_a6
    .sparse-switch
        0x3 -> :sswitch_4b
        0x5 -> :sswitch_4b
        0x30 -> :sswitch_37
        0x50 -> :sswitch_37
    .end sparse-switch

    :sswitch_data_b8
    .sparse-switch
        0x3 -> :sswitch_82
        0x5 -> :sswitch_82
        0x30 -> :sswitch_5e
        0x50 -> :sswitch_5e
    .end sparse-switch
.end method


# virtual methods
.method public getMode()I
    .registers 2

    iget v0, p0, Lcom/android/server/am/ToolkitTabDialog$ArrowView;->mMode:I

    return v0
.end method

.method public setImageResource(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabDialog$ArrowView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-void
.end method
