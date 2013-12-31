.class final Lcom/android/server/am/MultiWindowManagerService$H;
.super Landroid/os/Handler;
.source "MultiWindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MultiWindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field private static final MSG_MINIMIZE_ALL:I = 0x3

.field private static final MSG_MINIMIZE_EXPANDED_ICON:I = 0x1

.field private static final MSG_MINIMIZE_STACKED_ICON:I = 0x2

.field private static final MSG_RELAUNCH_ALL_EXTERNAL_ACTIVITY:I = 0xa


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MultiWindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/MultiWindowManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    iget-object v7, v7, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v4, 0x0

    iget v7, p1, Landroid/os/Message;->what:I

    sparse-switch v7, :sswitch_data_112

    :cond_e
    :goto_e
    return-void

    :sswitch_f
    if-eqz v5, :cond_e

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    #getter for: Lcom/android/server/am/MultiWindowManagerService;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static {v7}, Lcom/android/server/am/MultiWindowManagerService;->access$600(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/SystemVibrator;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    #getter for: Lcom/android/server/am/MultiWindowManagerService;->mIvt:[B
    invoke-static {v8}, Lcom/android/server/am/MultiWindowManagerService;->access$500(Lcom/android/server/am/MultiWindowManagerService;)[B

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    #getter for: Lcom/android/server/am/MultiWindowManagerService;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static {v9}, Lcom/android/server/am/MultiWindowManagerService;->access$600(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/SystemVibrator;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V

    const/4 v4, 0x0

    const/4 v0, 0x0

    :goto_2c
    if-ge v0, v5, :cond_79

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    #getter for: Lcom/android/server/am/MultiWindowManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v7}, Lcom/android/server/am/MultiWindowManagerService;->access$200(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    iget-object v8, v7, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    iget-object v7, v7, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;

    iget-object v7, v7, Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;->mToken:Landroid/os/IBinder;

    invoke-virtual {v8, v7}, Lcom/android/server/am/ActivityStack;->getWindowInfo(Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    if-eqz v1, :cond_6f

    iget v7, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v4

    iget v8, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v7, v8}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    #getter for: Lcom/android/server/am/MultiWindowManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v7}, Lcom/android/server/am/MultiWindowManagerService;->access$200(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    iget-object v8, v7, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    iget-object v7, v7, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;

    iget-object v7, v7, Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;->mToken:Landroid/os/IBinder;

    invoke-virtual {v8, v7, v6}, Lcom/android/server/am/ActivityStack;->setWindowInfo(Landroid/os/IBinder;Landroid/os/Bundle;)V

    :cond_6f
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    #getter for: Lcom/android/server/am/MultiWindowManagerService;->mShiftXArrange:I
    invoke-static {v7}, Lcom/android/server/am/MultiWindowManagerService;->access$700(Lcom/android/server/am/MultiWindowManagerService;)I

    move-result v7

    add-int/2addr v4, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    :cond_79
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    const/4 v8, 0x1

    #setter for: Lcom/android/server/am/MultiWindowManagerService;->mMinimizeIconState:I
    invoke-static {v7, v8}, Lcom/android/server/am/MultiWindowManagerService;->access$802(Lcom/android/server/am/MultiWindowManagerService;I)I

    goto :goto_e

    :sswitch_80
    if-eqz v5, :cond_e

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    #getter for: Lcom/android/server/am/MultiWindowManagerService;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static {v7}, Lcom/android/server/am/MultiWindowManagerService;->access$600(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/SystemVibrator;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    #getter for: Lcom/android/server/am/MultiWindowManagerService;->mIvt:[B
    invoke-static {v8}, Lcom/android/server/am/MultiWindowManagerService;->access$500(Lcom/android/server/am/MultiWindowManagerService;)[B

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    #getter for: Lcom/android/server/am/MultiWindowManagerService;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static {v9}, Lcom/android/server/am/MultiWindowManagerService;->access$600(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/SystemVibrator;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V

    const/4 v4, 0x0

    const/4 v0, 0x0

    :goto_9d
    if-ge v0, v5, :cond_ea

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    #getter for: Lcom/android/server/am/MultiWindowManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v7}, Lcom/android/server/am/MultiWindowManagerService;->access$200(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    iget-object v8, v7, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    iget-object v7, v7, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;

    iget-object v7, v7, Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;->mToken:Landroid/os/IBinder;

    invoke-virtual {v8, v7}, Lcom/android/server/am/ActivityStack;->getWindowInfo(Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    if-eqz v1, :cond_e0

    iget v7, p1, Landroid/os/Message;->arg1:I

    add-int/2addr v7, v4

    iget v8, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v7, v8}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    #getter for: Lcom/android/server/am/MultiWindowManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v7}, Lcom/android/server/am/MultiWindowManagerService;->access$200(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    iget-object v8, v7, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    iget-object v7, v7, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;

    iget-object v7, v7, Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;->mToken:Landroid/os/IBinder;

    invoke-virtual {v8, v7, v6}, Lcom/android/server/am/ActivityStack;->setWindowInfo(Landroid/os/IBinder;Landroid/os/Bundle;)V

    :cond_e0
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    #getter for: Lcom/android/server/am/MultiWindowManagerService;->mShiftX:I
    invoke-static {v7}, Lcom/android/server/am/MultiWindowManagerService;->access$300(Lcom/android/server/am/MultiWindowManagerService;)I

    move-result v7

    add-int/2addr v4, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_9d

    :cond_ea
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    const/4 v8, 0x0

    #setter for: Lcom/android/server/am/MultiWindowManagerService;->mMinimizeIconState:I
    invoke-static {v7, v8}, Lcom/android/server/am/MultiWindowManagerService;->access$802(Lcom/android/server/am/MultiWindowManagerService;I)I

    goto/16 :goto_e

    :sswitch_f2
    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    #calls: Lcom/android/server/am/MultiWindowManagerService;->minimizeAll(Ljava/lang/String;)V
    invoke-static {v8, v7}, Lcom/android/server/am/MultiWindowManagerService;->access$900(Lcom/android/server/am/MultiWindowManagerService;Ljava/lang/String;)V

    goto/16 :goto_e

    :sswitch_fd
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    #getter for: Lcom/android/server/am/MultiWindowManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v7}, Lcom/android/server/am/MultiWindowManagerService;->access$200(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->relaunchAllExternalActivityLocked()V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_e

    nop

    :sswitch_data_112
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_80
        0x3 -> :sswitch_f2
        0xa -> :sswitch_fd
    .end sparse-switch
.end method
