.class Lcom/android/server/am/ToolkitTabWidget$TabSpec;
.super Ljava/lang/Object;
.source "ToolkitTabWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ToolkitTabWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabSpec"
.end annotation


# instance fields
.field private mContentsView:Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;

.field mGestureDetector:Landroid/view/GestureDetector;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mItemBackground:Landroid/graphics/drawable/Drawable;

.field private mObject:Ljava/lang/Object;

.field private mPermanent:Z

.field private mbLongPress:Z

.field private mbTop:Z

.field final synthetic this$0:Lcom/android/server/am/ToolkitTabWidget;


# direct methods
.method private constructor <init>(Lcom/android/server/am/ToolkitTabWidget;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Z)V
    .registers 8

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->this$0:Lcom/android/server/am/ToolkitTabWidget;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mbLongPress:Z

    iput-boolean v0, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mbTop:Z

    iput-boolean v0, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mPermanent:Z

    iput-object p2, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mObject:Ljava/lang/Object;

    iput-boolean p4, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mPermanent:Z

    new-instance v0, Landroid/view/GestureDetector;

    #getter for: Lcom/android/server/am/ToolkitTabWidget;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/am/ToolkitTabWidget;->access$100(Lcom/android/server/am/ToolkitTabWidget;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/server/am/ToolkitTabWidget$TabSpec$1;

    invoke-direct {v2, p0, p1}, Lcom/android/server/am/ToolkitTabWidget$TabSpec$1;-><init>(Lcom/android/server/am/ToolkitTabWidget$TabSpec;Lcom/android/server/am/ToolkitTabWidget;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/ToolkitTabWidget;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;ZLcom/android/server/am/ToolkitTabWidget$1;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/ToolkitTabWidget$TabSpec;-><init>(Lcom/android/server/am/ToolkitTabWidget;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/am/ToolkitTabWidget$TabSpec;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/ToolkitTabWidget$TabSpec;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mbLongPress:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/am/ToolkitTabWidget$TabSpec;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mbLongPress:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/am/ToolkitTabWidget$TabSpec;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mPermanent:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/am/ToolkitTabWidget$TabSpec;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->showContextMenu()V

    return-void
.end method

.method private showContextMenu()V
    .registers 7

    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const-string v5, "Remove this tab"

    aput-object v5, v2, v4

    iget-object v4, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->this$0:Lcom/android/server/am/ToolkitTabWidget;

    invoke-virtual {v4}, Lcom/android/server/am/ToolkitTabWidget;->notifyLongPressItem()V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->this$0:Lcom/android/server/am/ToolkitTabWidget;

    #getter for: Lcom/android/server/am/ToolkitTabWidget;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/am/ToolkitTabWidget;->access$1300(Lcom/android/server/am/ToolkitTabWidget;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/android/server/am/ToolkitTabWidget$TabSpec$4;

    invoke-direct {v4, p0}, Lcom/android/server/am/ToolkitTabWidget$TabSpec$4;-><init>(Lcom/android/server/am/ToolkitTabWidget$TabSpec;)V

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    const/16 v4, 0x7d8

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public changeConfiguration(Z)V
    .registers 6

    iput-boolean p1, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mbTop:Z

    if-eqz p1, :cond_72

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->this$0:Lcom/android/server/am/ToolkitTabWidget;

    invoke-virtual {v2}, Lcom/android/server/am/ToolkitTabWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x108091e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mItemBackground:Landroid/graphics/drawable/Drawable;

    :goto_17
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mContentsView:Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;

    iget-object v3, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->this$0:Lcom/android/server/am/ToolkitTabWidget;

    #getter for: Lcom/android/server/am/ToolkitTabWidget;->mWindowGravity:I
    invoke-static {v3}, Lcom/android/server/am/ToolkitTabWidget;->access$600(Lcom/android/server/am/ToolkitTabWidget;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->setBackgroundDrawableDirection(I)V

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mContentsView:Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;

    iget-object v3, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mItemBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->setCustomBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mContentsView:Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;

    invoke-virtual {v2}, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_46

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->this$0:Lcom/android/server/am/ToolkitTabWidget;

    #getter for: Lcom/android/server/am/ToolkitTabWidget;->mItemWidth:I
    invoke-static {v2}, Lcom/android/server/am/ToolkitTabWidget;->access$700(Lcom/android/server/am/ToolkitTabWidget;)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->this$0:Lcom/android/server/am/ToolkitTabWidget;

    #getter for: Lcom/android/server/am/ToolkitTabWidget;->mItemHeight:I
    invoke-static {v2}, Lcom/android/server/am/ToolkitTabWidget;->access$800(Lcom/android/server/am/ToolkitTabWidget;)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mContentsView:Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;

    invoke-virtual {v2}, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->requestLayout()V

    :cond_46
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mContentsView:Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;

    invoke-virtual {v2}, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_56

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mContentsView:Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :cond_56
    if-eqz v0, :cond_71

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->this$0:Lcom/android/server/am/ToolkitTabWidget;

    #getter for: Lcom/android/server/am/ToolkitTabWidget;->mAppIconWidth:I
    invoke-static {v2}, Lcom/android/server/am/ToolkitTabWidget;->access$900(Lcom/android/server/am/ToolkitTabWidget;)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->this$0:Lcom/android/server/am/ToolkitTabWidget;

    #getter for: Lcom/android/server/am/ToolkitTabWidget;->mAppIconHeight:I
    invoke-static {v2}, Lcom/android/server/am/ToolkitTabWidget;->access$1000(Lcom/android/server/am/ToolkitTabWidget;)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mContentsView:Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_71
    return-void

    :cond_72
    iget-object v2, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->this$0:Lcom/android/server/am/ToolkitTabWidget;

    invoke-virtual {v2}, Lcom/android/server/am/ToolkitTabWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x108091d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mItemBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_17
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    instance-of v2, p1, Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    if-nez v2, :cond_8

    :cond_7
    :goto_7
    return v1

    :cond_8
    move-object v0, p1

    check-cast v0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    invoke-virtual {v0}, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->getObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->getObject()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_7

    const/4 v1, 0x1

    goto :goto_7
.end method

.method public getObject()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .registers 7

    const/4 v5, 0x1

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mContentsView:Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mContentsView:Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;

    :goto_7
    return-object v1

    :cond_8
    new-instance v1, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->this$0:Lcom/android/server/am/ToolkitTabWidget;

    iget-object v3, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->this$0:Lcom/android/server/am/ToolkitTabWidget;

    invoke-virtual {v3}, Lcom/android/server/am/ToolkitTabWidget;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;-><init>(Lcom/android/server/am/ToolkitTabWidget;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mContentsView:Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mContentsView:Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->this$0:Lcom/android/server/am/ToolkitTabWidget;

    #getter for: Lcom/android/server/am/ToolkitTabWidget;->mItemWidth:I
    invoke-static {v3}, Lcom/android/server/am/ToolkitTabWidget;->access$700(Lcom/android/server/am/ToolkitTabWidget;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->this$0:Lcom/android/server/am/ToolkitTabWidget;

    #getter for: Lcom/android/server/am/ToolkitTabWidget;->mItemHeight:I
    invoke-static {v4}, Lcom/android/server/am/ToolkitTabWidget;->access$800(Lcom/android/server/am/ToolkitTabWidget;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->this$0:Lcom/android/server/am/ToolkitTabWidget;

    invoke-virtual {v1}, Lcom/android/server/am/ToolkitTabWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mContentsView:Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->this$0:Lcom/android/server/am/ToolkitTabWidget;

    #getter for: Lcom/android/server/am/ToolkitTabWidget;->mItemWidth:I
    invoke-static {v3}, Lcom/android/server/am/ToolkitTabWidget;->access$700(Lcom/android/server/am/ToolkitTabWidget;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->this$0:Lcom/android/server/am/ToolkitTabWidget;

    #getter for: Lcom/android/server/am/ToolkitTabWidget;->mItemHeight:I
    invoke-static {v4}, Lcom/android/server/am/ToolkitTabWidget;->access$800(Lcom/android/server/am/ToolkitTabWidget;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mContentsView:Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->setGravity(I)V

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mItemBackground:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_71

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->this$0:Lcom/android/server/am/ToolkitTabWidget;

    invoke-virtual {v1}, Lcom/android/server/am/ToolkitTabWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x108091d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mItemBackground:Landroid/graphics/drawable/Drawable;

    :cond_71
    iget-object v1, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mContentsView:Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;

    iget-object v2, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mItemBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->setCustomBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mContentsView:Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;

    invoke-virtual {v1, v5}, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mContentsView:Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;

    invoke-virtual {v1, v5}, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mContentsView:Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;

    invoke-virtual {v1, v5}, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->setFocusable(Z)V

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mContentsView:Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;

    invoke-virtual {v1, v5}, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->setFocusableInTouchMode(Z)V

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mContentsView:Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;

    new-instance v2, Lcom/android/server/am/ToolkitTabWidget$TabSpec$2;

    invoke-direct {v2, p0}, Lcom/android/server/am/ToolkitTabWidget$TabSpec$2;-><init>(Lcom/android/server/am/ToolkitTabWidget$TabSpec;)V

    invoke-virtual {v1, v2}, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mContentsView:Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;

    new-instance v2, Lcom/android/server/am/ToolkitTabWidget$TabSpec$3;

    invoke-direct {v2, p0}, Lcom/android/server/am/ToolkitTabWidget$TabSpec$3;-><init>(Lcom/android/server/am/ToolkitTabWidget$TabSpec;)V

    invoke-virtual {v1, v2}, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mContentsView:Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;

    goto/16 :goto_7
.end method

.method public requestFocus(Z)V
    .registers 3

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :goto_9
    return-void

    :cond_a
    invoke-virtual {p0}, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    goto :goto_9
.end method

.method public updateTopItemBackground(Z)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mbTop:Z

    if-ne v0, p1, :cond_5

    :goto_4
    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mbTop:Z

    if-eqz p1, :cond_24

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->this$0:Lcom/android/server/am/ToolkitTabWidget;

    invoke-virtual {v0}, Lcom/android/server/am/ToolkitTabWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108091e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mItemBackground:Landroid/graphics/drawable/Drawable;

    :goto_1c
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mContentsView:Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mItemBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ToolkitTabWidget$CustomLinearLayout;->setCustomBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_24
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->this$0:Lcom/android/server/am/ToolkitTabWidget;

    invoke-virtual {v0}, Lcom/android/server/am/ToolkitTabWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108091d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mItemBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_1c
.end method
