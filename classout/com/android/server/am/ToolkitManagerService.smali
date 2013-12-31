.class public Lcom/android/server/am/ToolkitManagerService;
.super Landroid/toolkit/IToolkitService$Stub;
.source "ToolkitManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ToolkitManagerService$HostAppDeathRecipient;,
        Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;,
        Lcom/android/server/am/ToolkitManagerService$ToolkitTabItemData;,
        Lcom/android/server/am/ToolkitManagerService$ReceiveData;,
        Lcom/android/server/am/ToolkitManagerService$OnStatusChangeListener;
    }
.end annotation


# static fields
.field static final DEBUG:Z = true

.field private static final INTENT_CATEGORY_MULTIWINDOW_TOOLKIT:Ljava/lang/String; = "android.intent.category.MULTIWINDOW_TOOLKIT"

.field private static final PREFERENCE_NAME:Ljava/lang/String; = "ToolkitManagerService"

.field public static final SERVICE_NAME:Ljava/lang/String; = "toolkitmanager"

.field private static final TAG:Ljava/lang/String; = "ToolkitManagerService"

.field static final TOOKIT_MODE_FLOATING:I = 0x0

.field static final TOOKIT_MODE_SNAP:I = 0x1

.field static final TOOKIT_UI_STATUS_HIDE:I = 0x0

.field static final TOOKIT_UI_STATUS_NONE:I = -0x1

.field static final TOOKIT_UI_STATUS_SHOW_ALL:I = 0x2

.field static final TOOKIT_UI_STATUS_SHOW_TAB:I = 0x1

.field private static final TOOLKIT_EVENT_ADD_TAB_ITEM:I = 0x4

.field private static final TOOLKIT_EVENT_CHANGE_CONFIG:I = 0x3

.field private static final TOOLKIT_EVENT_DESTROY:I = 0x8

.field private static final TOOLKIT_EVENT_HIDE_TOOLKITBAR:I = 0x2

.field private static final TOOLKIT_EVENT_REMOVE_TAB_ITEM:I = 0x5

.field private static final TOOLKIT_EVENT_REQUEST_FOCUS:I = 0x7

.field private static final TOOLKIT_EVENT_SEND_BUNDLE:I = 0x6

.field private static final TOOLKIT_EVENT_SEND_BUNDLE_DELAY_TIME:I = 0x1f4

.field private static final TOOLKIT_EVENT_SHOW_TOOLKITBAR:I = 0x0

.field private static final TOOLKIT_EVENT_SHOW_TOOLKITBAR_TAB:I = 0x1

.field private static final TOOLKIT_EXTRA:Ljava/lang/String; = "android.sec.toolkit"

.field private static final TOOLKIT_INIT_CATEGORY:Ljava/lang/String; = "android.intent.category.MULTIWINDOW_TOOLKIT_INIT"

.field static final TOOLKIT_ITEM_STATUS_DESTROY:I = 0x1

.field static final TOOLKIT_ITEM_STATUS_FOCUS:I = 0x2

.field static final TOOLKIT_ITEM_STATUS_FULL_SCREEN:I = 0x0

.field private static final TOOLKIT_PATH:Ljava/lang/String; = "/data/toolkit/"

.field private static final TOOLKIT_SAVE_FLAG_ALL:I = -0x1

.field private static final TOOLKIT_SAVE_FLAG_CONTENTS_RECT:I = 0x100

.field private static final TOOLKIT_SAVE_FLAG_FOCUSED_ITEM:I = 0x10000

.field private static final TOOLKIT_SAVE_FLAG_MODE:I = 0x1000

.field private static final TOOLKIT_SAVE_FLAG_TAB_LIST:I = 0x1

.field private static final TOOLKIT_SAVE_FLAG_TAB_NONE:I = 0x0

.field private static final TOOLKIT_SAVE_FLAG_UI_STATUS:I = 0x10

.field static final TOOLKIT_STATUS_CREATE:I = 0x0

.field static final TOOLKIT_STATUS_HIDE:I = 0x2

.field static final TOOLKIT_STATUS_IDLE:I = -0x1

.field static final TOOLKIT_STATUS_SHOW:I = 0x1


# instance fields
.field private final TOOLKIT_OPERATION_ADD:I

.field private final TOOLKIT_OPERATION_REMOVE:I

.field private mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/toolkit/IToolkitServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContentsRect:Landroid/graphics/Rect;

.field private mContext:Landroid/content/Context;

.field private mCurrentHostItem:Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

.field private mFocusedItem:Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

.field private mIsEnabled:Z

.field private mMode:I

.field private mOriginalContentsRect:Landroid/graphics/Rect;

.field private final mPluginDataHandler:Landroid/os/Handler;

.field private mQueried:Z

.field private mShowingTab:Z

.field private mStatusChangeListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ToolkitManagerService$OnStatusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTabList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;",
            ">;"
        }
    .end annotation
.end field

.field private mTabWindow:Lcom/android/server/am/ToolkitTabDialog;

.field private final mTabWindowStatusChangeListener:Lcom/android/server/am/ToolkitTabDialog$OnStatusChangeListener;

.field private mToolkitStatus:I

.field private mToolkitUiStatus:I


# direct methods
.method public constructor <init>()V
    .registers 5

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/toolkit/IToolkitService$Stub;-><init>()V

    iput v1, p0, Lcom/android/server/am/ToolkitManagerService;->TOOLKIT_OPERATION_ADD:I

    iput v3, p0, Lcom/android/server/am/ToolkitManagerService;->TOOLKIT_OPERATION_REMOVE:I

    iput v2, p0, Lcom/android/server/am/ToolkitManagerService;->mToolkitStatus:I

    iput-boolean v1, p0, Lcom/android/server/am/ToolkitManagerService;->mShowingTab:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ToolkitManagerService;->mTabList:Ljava/util/ArrayList;

    iput v2, p0, Lcom/android/server/am/ToolkitManagerService;->mToolkitUiStatus:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ToolkitManagerService;->mOriginalContentsRect:Landroid/graphics/Rect;

    iput v3, p0, Lcom/android/server/am/ToolkitManagerService;->mMode:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ToolkitManagerService;->mFocusedItem:Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ToolkitManagerService;->mStatusChangeListener:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/server/am/ToolkitManagerService;->mQueried:Z

    iput-boolean v1, p0, Lcom/android/server/am/ToolkitManagerService;->mIsEnabled:Z

    new-instance v0, Lcom/android/server/am/ToolkitManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/ToolkitManagerService$1;-><init>(Lcom/android/server/am/ToolkitManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/ToolkitManagerService;->mPluginDataHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/am/ToolkitManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/ToolkitManagerService$2;-><init>(Lcom/android/server/am/ToolkitManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/ToolkitManagerService;->mTabWindowStatusChangeListener:Lcom/android/server/am/ToolkitTabDialog$OnStatusChangeListener;

    return-void
.end method

.method private SendData(Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;ILandroid/os/Bundle;)Z
    .registers 11

    const/4 v4, 0x0

    if-nez p1, :cond_4

    :goto_3
    return v4

    :cond_4
    if-eqz p1, :cond_39

    invoke-direct {p0, p1}, Lcom/android/server/am/ToolkitManagerService;->findCallbackList(Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;)Landroid/toolkit/IToolkitServiceCallback;

    move-result-object v0

    if-eqz v0, :cond_39

    :try_start_c
    iget-object v5, p0, Lcom/android/server/am/ToolkitManagerService;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    invoke-virtual {v3, p1}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->equalPackage(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/android/server/am/ToolkitManagerService;->mTabWindow:Lcom/android/server/am/ToolkitTabDialog;

    invoke-virtual {v5, v3}, Lcom/android/server/am/ToolkitTabDialog;->setFocusItem(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->requestFocus()Z

    :cond_2c
    invoke-interface {v0, p2, p3}, Landroid/toolkit/IToolkitServiceCallback;->onReceiveBundle(ILandroid/os/Bundle;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2f} :catch_31

    const/4 v4, 0x1

    goto :goto_3

    :catch_31
    move-exception v1

    const-string v5, "ToolkitManagerService"

    const-string v6, "SendData"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_39
    const-string v5, "ToolkitManagerService"

    const-string v6, "The app is not running."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private SendMessage(ILjava/lang/Object;I)V
    .registers 8

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p1, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p3, :cond_12

    iget-object v1, p0, Lcom/android/server/am/ToolkitManagerService;->mPluginDataHandler:Landroid/os/Handler;

    int-to-long v2, p3

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_11
    return-void

    :cond_12
    iget-object v1, p0, Lcom/android/server/am/ToolkitManagerService;->mPluginDataHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_11
.end method

.method static synthetic access$1000(Lcom/android/server/am/ToolkitManagerService;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ToolkitManagerService;->mTabList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/am/ToolkitManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/ToolkitManagerService;->notifyDestory()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/am/ToolkitManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/ToolkitManagerService;->setStatus(I)V

    return-void
.end method

.method static synthetic access$1302(Lcom/android/server/am/ToolkitManagerService;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/am/ToolkitManagerService;->mToolkitUiStatus:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/am/ToolkitManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/ToolkitManagerService;->startEmptyActivity()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/am/ToolkitManagerService;Ljava/lang/Object;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ToolkitManagerService;->notifyTabItemChange(Ljava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$1602(Lcom/android/server/am/ToolkitManagerService;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/am/ToolkitManagerService;->mMode:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/am/ToolkitManagerService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ToolkitManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/am/ToolkitManagerService;)Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ToolkitManagerService;->mCurrentHostItem:Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/ToolkitManagerService;)Lcom/android/server/am/ToolkitTabDialog;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ToolkitManagerService;->mTabWindow:Lcom/android/server/am/ToolkitTabDialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/am/ToolkitManagerService;Lcom/android/server/am/ToolkitTabDialog;)Lcom/android/server/am/ToolkitTabDialog;
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/ToolkitManagerService;->mTabWindow:Lcom/android/server/am/ToolkitTabDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/am/ToolkitManagerService;)Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ToolkitManagerService;->mFocusedItem:Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/am/ToolkitManagerService;Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;)Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/ToolkitManagerService;->mFocusedItem:Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/am/ToolkitManagerService;Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;ILandroid/os/Bundle;)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/ToolkitManagerService;->SendData(Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/am/ToolkitManagerService;ILjava/lang/Object;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/ToolkitManagerService;->SendMessage(ILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/am/ToolkitManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/ToolkitManagerService;->internalShowToolkit(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/am/ToolkitManagerService;)Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ToolkitManagerService;->mContentsRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/am/ToolkitManagerService;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/ToolkitManagerService;->mContentsRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/am/ToolkitManagerService;)Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ToolkitManagerService;->mOriginalContentsRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/am/ToolkitManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/ToolkitManagerService;->save(I)V

    return-void
.end method

.method private findCallbackList(Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;)Landroid/toolkit/IToolkitServiceCallback;
    .registers 11

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/android/server/am/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    if-lez v1, :cond_4f

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v1, :cond_4a

    :try_start_c
    iget-object v6, p0, Lcom/android/server/am/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v3}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    invoke-virtual {p1, v6}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_47

    iget-object v6, p0, Lcom/android/server/am/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/toolkit/IToolkitServiceCallback;

    move-object v4, v0

    iget-object v6, p0, Lcom/android/server/am/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_29} :catch_2b

    move-object v5, v4

    :goto_2a
    return-object v5

    :catch_2b
    move-exception v2

    const-string v6, "ToolkitManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Remote Exception:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_47
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_4a
    iget-object v6, p0, Lcom/android/server/am/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :cond_4f
    move-object v5, v4

    goto :goto_2a
.end method

.method private findCallbackList(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;
    .registers 11

    iget-object v5, p0, Lcom/android/server/am/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    const/4 v4, 0x0

    if-lez v1, :cond_51

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v1, :cond_4c

    :try_start_c
    iget-object v5, p0, Lcom/android/server/am/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v3}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    move-object v4, v0

    invoke-virtual {v4, p1, p2}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_49

    iget-object v5, p0, Lcom/android/server/am/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_21} :catch_23

    move-object v5, v4

    :goto_22
    return-object v5

    :catch_23
    move-exception v2

    const-string v5, "ToolkitManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Remote Exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_49
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_4c
    iget-object v5, p0, Lcom/android/server/am/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :cond_51
    const/4 v5, 0x0

    goto :goto_22
.end method

.method private internalShowToolkit(I)V
    .registers 8

    iget-object v3, p0, Lcom/android/server/am/ToolkitManagerService;->mTabWindow:Lcom/android/server/am/ToolkitTabDialog;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/server/am/ToolkitManagerService;->mTabWindow:Lcom/android/server/am/ToolkitTabDialog;

    invoke-virtual {v3, p1}, Lcom/android/server/am/ToolkitTabDialog;->changeUiStatus(I)V

    :goto_9
    return-void

    :cond_a
    new-instance v3, Lcom/android/server/am/ToolkitTabDialog;

    iget-object v4, p0, Lcom/android/server/am/ToolkitManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/am/ToolkitTabDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/am/ToolkitManagerService;->mTabWindow:Lcom/android/server/am/ToolkitTabDialog;

    iget-object v3, p0, Lcom/android/server/am/ToolkitManagerService;->mTabWindow:Lcom/android/server/am/ToolkitTabDialog;

    iget-object v4, p0, Lcom/android/server/am/ToolkitManagerService;->mTabWindowStatusChangeListener:Lcom/android/server/am/ToolkitTabDialog$OnStatusChangeListener;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ToolkitTabDialog;->setOnStatusChangeListener(Lcom/android/server/am/ToolkitTabDialog$OnStatusChangeListener;)V

    iget-object v3, p0, Lcom/android/server/am/ToolkitManagerService;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    iget-object v3, p0, Lcom/android/server/am/ToolkitManagerService;->mTabWindow:Lcom/android/server/am/ToolkitTabDialog;

    invoke-virtual {v2}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->isPermanent()Z

    move-result v5

    invoke-virtual {v3, v4, v2, v5}, Lcom/android/server/am/ToolkitTabDialog;->addTab(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Z)Z

    goto :goto_20

    :cond_3a
    iget-object v3, p0, Lcom/android/server/am/ToolkitManagerService;->mTabWindow:Lcom/android/server/am/ToolkitTabDialog;

    iget-object v4, p0, Lcom/android/server/am/ToolkitManagerService;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ToolkitTabDialog;->changeConfiguration(Landroid/graphics/Rect;)V

    :try_start_41
    iget-object v3, p0, Lcom/android/server/am/ToolkitManagerService;->mTabWindow:Lcom/android/server/am/ToolkitTabDialog;

    iget-object v4, p0, Lcom/android/server/am/ToolkitManagerService;->mFocusedItem:Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ToolkitTabDialog;->setFocusItem(Ljava/lang/Object;)V
    :try_end_48
    .catch Ljava/lang/IllegalStateException; {:try_start_41 .. :try_end_48} :catch_59

    :goto_48
    iget v3, p0, Lcom/android/server/am/ToolkitManagerService;->mToolkitUiStatus:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_61

    iget v3, p0, Lcom/android/server/am/ToolkitManagerService;->mToolkitUiStatus:I

    if-eqz v3, :cond_61

    iget-object v3, p0, Lcom/android/server/am/ToolkitManagerService;->mTabWindow:Lcom/android/server/am/ToolkitTabDialog;

    iget v4, p0, Lcom/android/server/am/ToolkitManagerService;->mToolkitUiStatus:I

    invoke-virtual {v3, v4}, Lcom/android/server/am/ToolkitTabDialog;->changeUiStatus(I)V

    goto :goto_9

    :catch_59
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/am/ToolkitManagerService;->mFocusedItem:Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    goto :goto_48

    :cond_61
    iget-object v3, p0, Lcom/android/server/am/ToolkitManagerService;->mTabWindow:Lcom/android/server/am/ToolkitTabDialog;

    invoke-virtual {v3, p1}, Lcom/android/server/am/ToolkitTabDialog;->changeUiStatus(I)V

    goto :goto_9
.end method

.method private load()V
    .registers 18

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ToolkitManagerService;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ToolkitManagerService;->mCurrentHostItem:Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    if-nez v15, :cond_e

    :goto_d
    return-void

    :cond_e
    new-instance v9, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "/data/toolkit/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ToolkitManagerService;->mCurrentHostItem:Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v9, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->canRead()Z

    move-result v15

    if-eqz v15, :cond_88

    :try_start_36
    new-instance v12, Ljava/io/BufferedInputStream;

    new-instance v15, Ljava/io/FileInputStream;

    invoke-direct {v15, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v16, 0x4000

    move/from16 v0, v16

    invoke-direct {v12, v15, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v7

    const/4 v15, 0x1

    invoke-virtual {v7, v15}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    invoke-virtual {v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v14

    const-string v15, "UTF-8"

    invoke-interface {v14, v12, v15}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    :goto_59
    const/4 v15, 0x1

    if-eq v6, v15, :cond_1eb

    packed-switch v6, :pswitch_data_1f0

    :cond_5f
    :goto_5f
    :pswitch_5f
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    goto :goto_59

    :pswitch_64
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    const-string v16, "STATUS"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_91

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/am/ToolkitManagerService;->mToolkitUiStatus:I
    :try_end_7d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_36 .. :try_end_7d} :catch_7e
    .catch Ljava/io/FileNotFoundException; {:try_start_36 .. :try_end_7d} :catch_ab
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_7d} :catch_110
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_7d} :catch_135

    goto :goto_5f

    :catch_7e
    move-exception v5

    const-string v15, "ToolkitManagerService"

    const-string v16, "load"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_88
    :goto_88
    const-string v15, "ToolkitManagerService"

    const-string v16, "load"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :cond_91
    :try_start_91
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    const-string v16, "MODE"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b6

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/am/ToolkitManagerService;->mMode:I
    :try_end_aa
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_91 .. :try_end_aa} :catch_7e
    .catch Ljava/io/FileNotFoundException; {:try_start_91 .. :try_end_aa} :catch_ab
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_aa} :catch_110
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_aa} :catch_135

    goto :goto_5f

    :catch_ab
    move-exception v5

    const-string v15, "ToolkitManagerService"

    const-string v16, "load"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_88

    :cond_b6
    :try_start_b6
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    const-string v16, "CONTENT_RECT"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_15a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ToolkitManagerService;->mContentsRect:Landroid/graphics/Rect;

    if-nez v15, :cond_d1

    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/am/ToolkitManagerService;->mContentsRect:Landroid/graphics/Rect;

    :cond_d1
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    const/4 v8, 0x0

    :goto_d6
    if-ge v8, v1, :cond_5f

    invoke-interface {v14, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    const-string v15, "l"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ToolkitManagerService;->mContentsRect:Landroid/graphics/Rect;

    invoke-interface {v14, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/graphics/Rect;->left:I

    :cond_f4
    :goto_f4
    add-int/lit8 v8, v8, 0x1

    goto :goto_d6

    :cond_f7
    const-string v15, "r"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11c

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ToolkitManagerService;->mContentsRect:Landroid/graphics/Rect;

    invoke-interface {v14, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/graphics/Rect;->right:I
    :try_end_10f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b6 .. :try_end_10f} :catch_7e
    .catch Ljava/io/FileNotFoundException; {:try_start_b6 .. :try_end_10f} :catch_ab
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_10f} :catch_110
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_10f} :catch_135

    goto :goto_f4

    :catch_110
    move-exception v5

    const-string v15, "ToolkitManagerService"

    const-string v16, "load"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_88

    :cond_11c
    :try_start_11c
    const-string v15, "t"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_141

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ToolkitManagerService;->mContentsRect:Landroid/graphics/Rect;

    invoke-interface {v14, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/graphics/Rect;->top:I
    :try_end_134
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11c .. :try_end_134} :catch_7e
    .catch Ljava/io/FileNotFoundException; {:try_start_11c .. :try_end_134} :catch_ab
    .catch Ljava/io/IOException; {:try_start_11c .. :try_end_134} :catch_110
    .catch Ljava/lang/Exception; {:try_start_11c .. :try_end_134} :catch_135

    goto :goto_f4

    :catch_135
    move-exception v5

    const-string v15, "ToolkitManagerService"

    const-string v16, "load"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_88

    :cond_141
    :try_start_141
    const-string v15, "b"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ToolkitManagerService;->mContentsRect:Landroid/graphics/Rect;

    invoke-interface {v14, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/graphics/Rect;->bottom:I

    goto :goto_f4

    :cond_15a
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    const-string v16, "ITEM"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1b9

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x0

    :goto_16e
    if-ge v8, v1, :cond_1a6

    invoke-interface {v14, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    const-string v15, "p"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_183

    invoke-interface {v14, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v11

    :cond_180
    :goto_180
    add-int/lit8 v8, v8, 0x1

    goto :goto_16e

    :cond_183
    const-string v15, "f"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_199

    const-string v15, "true"

    invoke-interface {v14, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_180

    const/4 v3, 0x1

    goto :goto_180

    :cond_199
    const-string v15, "c"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_180

    invoke-interface {v14, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_180

    :cond_1a6
    new-instance v13, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v11, v4}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;-><init>(Lcom/android/server/am/ToolkitManagerService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v3}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->setPermanent(Z)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ToolkitManagerService;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5f

    :cond_1b9
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    const-string v16, "FOCUSED"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5f

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ToolkitManagerService;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_5f

    if-gez v10, :cond_1db

    const/4 v10, 0x0

    :cond_1db
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ToolkitManagerService;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/am/ToolkitManagerService;->mFocusedItem:Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    goto/16 :goto_5f

    :cond_1eb
    invoke-virtual {v12}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1ee
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_141 .. :try_end_1ee} :catch_7e
    .catch Ljava/io/FileNotFoundException; {:try_start_141 .. :try_end_1ee} :catch_ab
    .catch Ljava/io/IOException; {:try_start_141 .. :try_end_1ee} :catch_110
    .catch Ljava/lang/Exception; {:try_start_141 .. :try_end_1ee} :catch_135

    goto/16 :goto_88

    :pswitch_data_1f0
    .packed-switch 0x0
        :pswitch_5f
        :pswitch_5f
        :pswitch_64
        :pswitch_5f
    .end packed-switch
.end method

.method private notifyCallbackChange(ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    iget-object v2, p0, Lcom/android/server/am/ToolkitManagerService;->mCurrentHostItem:Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    invoke-direct {p0, v2}, Lcom/android/server/am/ToolkitManagerService;->findCallbackList(Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;)Landroid/toolkit/IToolkitServiceCallback;

    move-result-object v0

    if-eqz v0, :cond_b

    :try_start_8
    invoke-interface {v0, p1, p2, p3}, Landroid/toolkit/IToolkitServiceCallback;->onCallbackChange(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_c

    :cond_b
    :goto_b
    return-void

    :catch_c
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method private notifyChangeUiStatus()V
    .registers 9

    iget-object v7, p0, Lcom/android/server/am/ToolkitManagerService;->mStatusChangeListener:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ToolkitManagerService$OnStatusChangeListener;

    iget v7, p0, Lcom/android/server/am/ToolkitManagerService;->mToolkitStatus:I

    invoke-interface {v6, v7}, Lcom/android/server/am/ToolkitManagerService$OnStatusChangeListener;->onStatusChanged(I)V

    goto :goto_6

    :cond_18
    iget-object v7, p0, Lcom/android/server/am/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v7}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_20
    if-ge v4, v1, :cond_3a

    :try_start_22
    iget-object v7, p0, Lcom/android/server/am/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v7, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/toolkit/IToolkitServiceCallback;

    move-object v2, v0

    if-eqz v2, :cond_33

    iget v7, p0, Lcom/android/server/am/ToolkitManagerService;->mToolkitUiStatus:I

    invoke-interface {v2, v7}, Landroid/toolkit/IToolkitServiceCallback;->onShowStatusChange(I)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_33} :catch_36

    :cond_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    :catch_36
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3a
    iget-object v7, p0, Lcom/android/server/am/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v7}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method private notifyContentsRect()V
    .registers 11

    iget-object v9, p0, Lcom/android/server/am/ToolkitManagerService;->mTabWindow:Lcom/android/server/am/ToolkitTabDialog;

    invoke-virtual {v9}, Lcom/android/server/am/ToolkitTabDialog;->getFullRect()Landroid/graphics/Rect;

    move-result-object v5

    iget-object v9, p0, Lcom/android/server/am/ToolkitManagerService;->mTabWindow:Lcom/android/server/am/ToolkitTabDialog;

    invoke-virtual {v9}, Lcom/android/server/am/ToolkitTabDialog;->getContentsRect()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v9, p0, Lcom/android/server/am/ToolkitManagerService;->mStatusChangeListener:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_12
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_22

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ToolkitManagerService$OnStatusChangeListener;

    invoke-interface {v8, v5, v3}, Lcom/android/server/am/ToolkitManagerService$OnStatusChangeListener;->onSizeChange(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_12

    :cond_22
    iget-object v9, p0, Lcom/android/server/am/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v9}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    const/4 v2, 0x0

    const/4 v6, 0x0

    :goto_2a
    if-ge v6, v1, :cond_42

    :try_start_2c
    iget-object v9, p0, Lcom/android/server/am/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v9, v6}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Landroid/toolkit/IToolkitServiceCallback;

    move-object v2, v0

    if-eqz v2, :cond_3b

    invoke-interface {v2, v5}, Landroid/toolkit/IToolkitServiceCallback;->onSizeChange(Landroid/graphics/Rect;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_3b} :catch_3e

    :cond_3b
    add-int/lit8 v6, v6, 0x1

    goto :goto_2a

    :catch_3e
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :cond_42
    iget-object v9, p0, Lcom/android/server/am/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v9}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method private notifyDestory()V
    .registers 9

    iget-object v7, p0, Lcom/android/server/am/ToolkitManagerService;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v6, v0, [I

    const/4 v1, 0x0

    iget-object v7, p0, Lcom/android/server/am/ToolkitManagerService;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_25

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v4}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->getTaskRecordId()I

    move-result v7

    aput v7, v6, v1

    move v1, v2

    goto :goto_f

    :cond_25
    iget-object v7, p0, Lcom/android/server/am/ToolkitManagerService;->mStatusChangeListener:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ToolkitManagerService$OnStatusChangeListener;

    invoke-interface {v5, v6}, Lcom/android/server/am/ToolkitManagerService$OnStatusChangeListener;->onDestroy([I)V

    goto :goto_2b

    :cond_3b
    return-void
.end method

.method private notifyTabItemChange(Ljava/lang/Object;I)V
    .registers 7

    move-object v0, p1

    check-cast v0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    iget-object v3, p0, Lcom/android/server/am/ToolkitManagerService;->mStatusChangeListener:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ToolkitManagerService$OnStatusChangeListener;

    invoke-virtual {v0}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->getTaskRecordId()I

    move-result v3

    invoke-interface {v2, v3, p2}, Lcom/android/server/am/ToolkitManagerService$OnStatusChangeListener;->onTabItemChange(II)V

    goto :goto_9

    :cond_1d
    return-void
.end method

.method private save(I)V
    .registers 17

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    const-string v11, "ToolkitManagerService"

    const-string v12, "save"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/android/server/am/ToolkitManagerService;->mCurrentHostItem:Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    if-nez v11, :cond_12

    :cond_11
    :goto_11
    return-void

    :cond_12
    :try_start_12
    new-instance v9, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "/data/toolkit/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/am/ToolkitManagerService;->mCurrentHostItem:Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    invoke-virtual {v12}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_30} :catch_1f3
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_30} :catch_1d3
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_30} :catch_1dc

    :try_start_30
    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->mkdir()Z

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3c
    .catch Ljava/io/FileNotFoundException; {:try_start_30 .. :try_end_3c} :catch_1f5
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_3c} :catch_1ec
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3c} :catch_1e5

    :try_start_3c
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v10

    const-string v11, "UTF-8"

    invoke-interface {v10, v7, v11}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 v11, 0x0

    const-string v12, "TOOLKIT"

    invoke-interface {v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v11, 0x0

    const-string v12, "STATUS"

    invoke-interface {v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v11, 0x0

    const-string v12, "value"

    iget v13, p0, Lcom/android/server/am/ToolkitManagerService;->mToolkitUiStatus:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v11, 0x0

    const-string v12, "STATUS"

    invoke-interface {v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v11, 0x0

    const-string v12, "MODE"

    invoke-interface {v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v11, 0x0

    const-string v12, "value"

    iget v13, p0, Lcom/android/server/am/ToolkitManagerService;->mMode:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v11, 0x0

    const-string v12, "MODE"

    invoke-interface {v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v11, p0, Lcom/android/server/am/ToolkitManagerService;->mContentsRect:Landroid/graphics/Rect;

    if-eqz v11, :cond_13f

    iget-object v11, p0, Lcom/android/server/am/ToolkitManagerService;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    if-eqz v11, :cond_13f

    iget-object v11, p0, Lcom/android/server/am/ToolkitManagerService;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-eqz v11, :cond_13f

    const/4 v11, 0x0

    const-string v12, "CONTENTS_RECT"

    invoke-interface {v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v11, 0x0

    const-string v12, "l"

    iget-object v13, p0, Lcom/android/server/am/ToolkitManagerService;->mContentsRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v11, 0x0

    const-string v12, "r"

    iget-object v13, p0, Lcom/android/server/am/ToolkitManagerService;->mContentsRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v11, 0x0

    const-string v12, "t"

    iget-object v13, p0, Lcom/android/server/am/ToolkitManagerService;->mContentsRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v11, 0x0

    const-string v12, "b"

    iget-object v13, p0, Lcom/android/server/am/ToolkitManagerService;->mContentsRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v11, 0x0

    const-string v12, "CONTENTS_RECT"

    invoke-interface {v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_dc
    const/4 v11, 0x0

    const-string v12, "APP_LIST"

    invoke-interface {v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v11, p0, Lcom/android/server/am/ToolkitManagerService;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_e9
    if-ge v3, v1, :cond_1a5

    iget-object v11, p0, Lcom/android/server/am/ToolkitManagerService;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    move-object v4, v0

    const/4 v11, 0x0

    const-string v12, "ITEM"

    invoke-interface {v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v11, 0x0

    const-string v12, "p"

    invoke-virtual {v4}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v11, 0x0

    const-string v12, "f"

    new-instance v13, Ljava/lang/Boolean;

    invoke-virtual {v4}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->isPermanent()Z

    move-result v14

    invoke-direct {v13, v14}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v13}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v4}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->getClassName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_128

    const/4 v11, 0x0

    const-string v12, "c"

    invoke-virtual {v4}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->getClassName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_128
    const/4 v11, 0x0

    const-string v12, "ITEM"

    invoke-interface {v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v11, -0x1

    if-ne v5, v11, :cond_13c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13c

    move v5, v3

    :cond_13c
    add-int/lit8 v3, v3, 0x1

    goto :goto_e9

    :cond_13f
    const/4 v11, 0x0

    const-string v12, "CONTENTS_RECT"

    invoke-interface {v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v11, 0x0

    const-string v12, "l"

    iget-object v13, p0, Lcom/android/server/am/ToolkitManagerService;->mOriginalContentsRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v11, 0x0

    const-string v12, "r"

    iget-object v13, p0, Lcom/android/server/am/ToolkitManagerService;->mOriginalContentsRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v11, 0x0

    const-string v12, "t"

    iget-object v13, p0, Lcom/android/server/am/ToolkitManagerService;->mOriginalContentsRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v11, 0x0

    const-string v12, "b"

    iget-object v13, p0, Lcom/android/server/am/ToolkitManagerService;->mOriginalContentsRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v11, 0x0

    const-string v12, "CONTENTS_RECT"

    invoke-interface {v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_183
    .catch Ljava/io/FileNotFoundException; {:try_start_3c .. :try_end_183} :catch_185
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_183} :catch_1ef
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_183} :catch_1e8

    goto/16 :goto_dc

    :catch_185
    move-exception v2

    move-object v6, v7

    move-object v8, v9

    :goto_188
    const-string v11, "ToolkitManagerService"

    const-string v12, "save"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_18f
    move/from16 v0, p1

    and-int/lit16 v11, v0, 0x100

    const/16 v12, 0x100

    if-ne v11, v12, :cond_19a

    invoke-direct {p0}, Lcom/android/server/am/ToolkitManagerService;->notifyContentsRect()V

    :cond_19a
    and-int/lit8 v11, p1, 0x10

    const/16 v12, 0x10

    if-ne v11, v12, :cond_11

    invoke-direct {p0}, Lcom/android/server/am/ToolkitManagerService;->notifyChangeUiStatus()V

    goto/16 :goto_11

    :cond_1a5
    const/4 v11, 0x0

    :try_start_1a6
    const-string v12, "APP_LIST"

    invoke-interface {v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v11, 0x0

    const-string v12, "FOCUSED"

    invoke-interface {v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v11, 0x0

    const-string v12, "value"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v11, 0x0

    const-string v12, "FOCUSED"

    invoke-interface {v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v11, 0x0

    const-string v12, "TOOLKIT"

    invoke-interface {v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_1d0
    .catch Ljava/io/FileNotFoundException; {:try_start_1a6 .. :try_end_1d0} :catch_185
    .catch Ljava/io/IOException; {:try_start_1a6 .. :try_end_1d0} :catch_1ef
    .catch Ljava/lang/Exception; {:try_start_1a6 .. :try_end_1d0} :catch_1e8

    move-object v6, v7

    move-object v8, v9

    goto :goto_18f

    :catch_1d3
    move-exception v2

    :goto_1d4
    const-string v11, "ToolkitManagerService"

    const-string v12, "save"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18f

    :catch_1dc
    move-exception v2

    :goto_1dd
    const-string v11, "ToolkitManagerService"

    const-string v12, "save"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18f

    :catch_1e5
    move-exception v2

    move-object v8, v9

    goto :goto_1dd

    :catch_1e8
    move-exception v2

    move-object v6, v7

    move-object v8, v9

    goto :goto_1dd

    :catch_1ec
    move-exception v2

    move-object v8, v9

    goto :goto_1d4

    :catch_1ef
    move-exception v2

    move-object v6, v7

    move-object v8, v9

    goto :goto_1d4

    :catch_1f3
    move-exception v2

    goto :goto_188

    :catch_1f5
    move-exception v2

    move-object v8, v9

    goto :goto_188
.end method

.method private setStatus(I)V
    .registers 3

    iget v0, p0, Lcom/android/server/am/ToolkitManagerService;->mToolkitStatus:I

    if-ne v0, p1, :cond_5

    :goto_4
    return-void

    :cond_5
    iput p1, p0, Lcom/android/server/am/ToolkitManagerService;->mToolkitStatus:I

    goto :goto_4
.end method

.method private startEmptyActivity()V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.MULTIWINDOW_TOOLKIT_INIT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.REQUEST_WINDOW_MODE"

    const v2, 0x2002010

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x3000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/am/ToolkitManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string v1, "ToolkitManagerService"

    const-string v2, "The empty application is run."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public addDefaultPluginApplication(Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .registers 9

    const/4 v1, 0x1

    if-eqz p1, :cond_36

    new-instance v0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;-><init>(Lcom/android/server/am/ToolkitManagerService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->setPermanent(Z)V

    iget-object v2, p0, Lcom/android/server/am/ToolkitManagerService;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    const-string v1, "ToolkitManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is already exist."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :cond_30
    :goto_30
    return v1

    :cond_31
    iget-object v2, p0, Lcom/android/server/am/ToolkitManagerService;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_36
    if-eqz p3, :cond_30

    invoke-direct {p0, v1}, Lcom/android/server/am/ToolkitManagerService;->save(I)V

    goto :goto_30
.end method

.method addOnStatusChangeListener(Lcom/android/server/am/ToolkitManagerService$OnStatusChangeListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/ToolkitManagerService;->mStatusChangeListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPluginTaskRecord(Lcom/android/server/am/TaskRecord;)Z
    .registers 11

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget-object v7, p1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-nez v7, :cond_e

    const-string v6, "ToolkitManagerService"

    const-string v7, "realActivity is null."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_d
    return v5

    :cond_e
    iget-object v7, p1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v7, p1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    iget v7, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-direct {v4, p0, v2, v0, v7}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;-><init>(Lcom/android/server/am/ToolkitManagerService;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v7, "com.sec.android.app.FlashBarService"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    iget-object v7, p0, Lcom/android/server/am/ToolkitManagerService;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_52

    iget-object v5, p0, Lcom/android/server/am/ToolkitManagerService;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_37
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    #getter for: Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->mTaskRecordId:I
    invoke-static {v4}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->access$100(Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->setTaskRecordId(I)V

    :cond_50
    move v5, v6

    goto :goto_d

    :cond_52
    const/4 v7, 0x4

    new-instance v8, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItemData;

    invoke-direct {v8, p0, v4, v6}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItemData;-><init>(Lcom/android/server/am/ToolkitManagerService;Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;Z)V

    invoke-direct {p0, v7, v8, v5}, Lcom/android/server/am/ToolkitManagerService;->SendMessage(ILjava/lang/Object;I)V

    iget-object v5, p0, Lcom/android/server/am/ToolkitManagerService;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v6}, Lcom/android/server/am/ToolkitManagerService;->save(I)V

    move v5, v6

    goto :goto_d
.end method

.method changeContentsSize(Landroid/graphics/Rect;)V
    .registers 4

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/am/ToolkitManagerService;->SendMessage(ILjava/lang/Object;I)V

    return-void
.end method

.method public checkToolkitTask(Lcom/android/server/am/TaskRecord;)Z
    .registers 8

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/am/ToolkitManagerService;->mCurrentHostItem:Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    if-eqz v3, :cond_1e

    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_1e

    iget-object v3, p0, Lcom/android/server/am/ToolkitManagerService;->mCurrentHostItem:Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    iget-object v4, p1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    :goto_1d
    return v2

    :cond_1e
    iget-object v3, p0, Lcom/android/server/am/ToolkitManagerService;->mTabList:Ljava/util/ArrayList;

    if-eqz v3, :cond_4b

    iget-object v3, p0, Lcom/android/server/am/ToolkitManagerService;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_28

    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28

    goto :goto_1d

    :cond_4b
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method public getToolkitBarStatus()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/android/server/am/ToolkitManagerService;->mToolkitUiStatus:I

    return v0
.end method

.method public getToolkitTabRect()Landroid/graphics/Rect;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/ToolkitManagerService;->mTabWindow:Lcom/android/server/am/ToolkitTabDialog;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/android/server/am/ToolkitManagerService;->isShowing()Z

    move-result v0

    if-nez v0, :cond_c

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/android/server/am/ToolkitManagerService;->mTabWindow:Lcom/android/server/am/ToolkitTabDialog;

    invoke-virtual {v0}, Lcom/android/server/am/ToolkitTabDialog;->getFullRect()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_b
.end method

.method public hideToolkitBar()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ToolkitManagerService;->mShowingTab:Z

    iget-object v0, p0, Lcom/android/server/am/ToolkitManagerService;->mPluginDataHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-direct {p0, v1}, Lcom/android/server/am/ToolkitManagerService;->setStatus(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled()Z
    .registers 4

    iget-boolean v1, p0, Lcom/android/server/am/ToolkitManagerService;->mQueried:Z

    if-nez v1, :cond_1c

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/ToolkitManagerService;->mQueried:Z

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/ToolkitManagerService;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/server/am/ToolkitManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :cond_12
    if-eqz v0, :cond_1f

    const-string v1, "com.sec.feature.multiwindow.toolkit"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/ToolkitManagerService;->mIsEnabled:Z

    :cond_1c
    :goto_1c
    iget-boolean v1, p0, Lcom/android/server/am/ToolkitManagerService;->mIsEnabled:Z

    return v1

    :cond_1f
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/permissions/com.sec.feature.multiwindow.toolkit"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/ToolkitManagerService;->mIsEnabled:Z

    goto :goto_1c
.end method

.method public isShowing()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/server/am/ToolkitManagerService;->mShowingTab:Z

    return v0
.end method

.method public publish(Landroid/content/Context;)V
    .registers 4

    if-nez p1, :cond_15

    const-string v0, "ToolkitManagerService"

    const-string v1, "context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iput-object p1, p0, Lcom/android/server/am/ToolkitManagerService;->mContext:Landroid/content/Context;

    const-string v0, "toolkitmanager"

    invoke-virtual {p0}, Lcom/android/server/am/ToolkitManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    :goto_14
    return-void

    :cond_15
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.multiwindow.toolkit"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_14
.end method

.method public registerCallback(Ljava/lang/String;Ljava/lang/String;Landroid/toolkit/IToolkitServiceCallback;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_23

    iget-object v3, p0, Lcom/android/server/am/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v4, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    const/4 v5, 0x1

    invoke-direct {v4, p0, p1, p2, v5}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;-><init>(Lcom/android/server/am/ToolkitManagerService;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v3, p3, v4}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {p0, v3, p1, p2}, Lcom/android/server/am/ToolkitManagerService;->notifyCallbackChange(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v0, :cond_23

    const-string v3, "ToolkitManagerService"

    const-string v4, "registerCallback failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    return v0
.end method

.method public removeAllPackageList()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/ToolkitManagerService;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/am/ToolkitManagerService;->save(I)V

    return-void
.end method

.method public removeDefaultPluginApplication(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 8

    const/4 v1, 0x1

    if-eqz p1, :cond_33

    new-instance v0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;-><init>(Lcom/android/server/am/ToolkitManagerService;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ToolkitManagerService;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    const-string v1, "ToolkitManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :cond_2d
    :goto_2d
    return v1

    :cond_2e
    iget-object v2, p0, Lcom/android/server/am/ToolkitManagerService;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_33
    if-eqz p3, :cond_2d

    invoke-direct {p0, v1}, Lcom/android/server/am/ToolkitManagerService;->save(I)V

    goto :goto_2d
.end method

.method removeOnStatusChangeListener(Lcom/android/server/am/ToolkitManagerService$OnStatusChangeListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/ToolkitManagerService;->mStatusChangeListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removePluginTaskRecord(Lcom/android/server/am/TaskRecord;)Z
    .registers 11

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v7, p1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-nez v7, :cond_e

    const-string v6, "ToolkitManagerService"

    const-string v7, "realActivity is null."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_d
    return v5

    :cond_e
    iget-object v7, p0, Lcom/android/server/am/ToolkitManagerService;->mCurrentHostItem:Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    if-nez v7, :cond_14

    move v5, v6

    goto :goto_d

    :cond_14
    iget-object v7, p1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v7, p1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    iget v7, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-direct {v3, p0, v2, v0, v7}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;-><init>(Lcom/android/server/am/ToolkitManagerService;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v7, p0, Lcom/android/server/am/ToolkitManagerService;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    invoke-virtual {v4}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->destroyApplication()V

    const/4 v7, 0x7

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8, v5}, Lcom/android/server/am/ToolkitManagerService;->SendMessage(ILjava/lang/Object;I)V

    invoke-direct {p0, v6, v4, v5}, Lcom/android/server/am/ToolkitManagerService;->SendMessage(ILjava/lang/Object;I)V

    move v5, v6

    goto :goto_d
.end method

.method public sendBundle(Landroid/content/Intent;ILandroid/os/Bundle;)Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v8, 0x0

    if-nez p1, :cond_2b

    iget-object v8, p0, Lcom/android/server/am/ToolkitManagerService;->mCurrentHostItem:Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    if-nez v8, :cond_5b

    const-string v9, "ToolkitManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Intent is null. And Host is null"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "Intent is null. And Host is null"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 v9, 0x0

    :goto_2a
    return v9

    :cond_2b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_3e

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    :cond_3e
    invoke-direct {p0, v7, v0}, Lcom/android/server/am/ToolkitManagerService;->findCallbackList(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    move-result-object v8

    if-nez v8, :cond_68

    new-instance v8, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    invoke-direct {v8, p0, p1}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;-><init>(Lcom/android/server/am/ToolkitManagerService;Landroid/content/Intent;)V

    invoke-virtual {v8}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->makeIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v9, "android.sec.toolkit"

    const/4 v10, 0x1

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/server/am/ToolkitManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_58
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_5b
    const/4 v9, 0x6

    new-instance v10, Lcom/android/server/am/ToolkitManagerService$ReceiveData;

    invoke-direct {v10, p0, v8, p2, p3}, Lcom/android/server/am/ToolkitManagerService$ReceiveData;-><init>(Lcom/android/server/am/ToolkitManagerService;Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;ILandroid/os/Bundle;)V

    const/16 v11, 0x1f4

    invoke-direct {p0, v9, v10, v11}, Lcom/android/server/am/ToolkitManagerService;->SendMessage(ILjava/lang/Object;I)V

    const/4 v9, 0x1

    goto :goto_2a

    :cond_68
    iget-object v9, p0, Lcom/android/server/am/ToolkitManagerService;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6e
    :goto_6e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_82

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    invoke-virtual {v3, v8}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->equalPackage(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6e

    move-object v8, v3

    goto :goto_6e

    :cond_82
    const/4 v9, 0x7

    const/4 v10, 0x0

    invoke-direct {p0, v9, v8, v10}, Lcom/android/server/am/ToolkitManagerService;->SendMessage(ILjava/lang/Object;I)V

    goto :goto_58
.end method

.method public sendBundleImmediate(Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p1, :cond_25

    new-instance v1, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;-><init>(Lcom/android/server/am/ToolkitManagerService;Landroid/content/Intent;)V

    :goto_8
    if-eqz v1, :cond_28

    invoke-direct {p0, v1}, Lcom/android/server/am/ToolkitManagerService;->findCallbackList(Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;)Landroid/toolkit/IToolkitServiceCallback;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-interface {v0, p2, p3}, Landroid/toolkit/IToolkitServiceCallback;->onReceiveBundleImmediate(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "ToolkitTargetBinder"

    invoke-interface {v0}, Landroid/toolkit/IToolkitServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {p4, v5, v6}, Landroid/os/Bundle;->putIBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_24
    return-object v4

    :cond_25
    iget-object v1, p0, Lcom/android/server/am/ToolkitManagerService;->mCurrentHostItem:Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    goto :goto_8

    :cond_28
    const-string v5, "ToolkitManagerService"

    const-string v6, "The app is not running."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    goto :goto_24
.end method

.method public setHostPackageName(Ljava/lang/String;Ljava/lang/String;Landroid/toolkit/IToolkitServiceCallback;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/am/ToolkitManagerService;->mFocusedItem:Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    iput-boolean v4, p0, Lcom/android/server/am/ToolkitManagerService;->mShowingTab:Z

    iput-object v3, p0, Lcom/android/server/am/ToolkitManagerService;->mContentsRect:Landroid/graphics/Rect;

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_26

    :cond_10
    const-string v1, "ToolkitManagerService"

    const-string v2, "setHostPackageName packageName is Null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v3, p0, Lcom/android/server/am/ToolkitManagerService;->mCurrentHostItem:Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    invoke-virtual {p0}, Lcom/android/server/am/ToolkitManagerService;->hideToolkitBar()Z

    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/server/am/ToolkitManagerService;->setStatus(I)V

    const/16 v1, 0x8

    invoke-direct {p0, v1, v3, v4}, Lcom/android/server/am/ToolkitManagerService;->SendMessage(ILjava/lang/Object;I)V

    :cond_25
    :goto_25
    return-void

    :cond_26
    new-instance v0, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;-><init>(Lcom/android/server/am/ToolkitManagerService;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/server/am/ToolkitManagerService;->mCurrentHostItem:Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    iget-object v1, p0, Lcom/android/server/am/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->kill()V

    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    iput-object v0, p0, Lcom/android/server/am/ToolkitManagerService;->mCurrentHostItem:Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    invoke-interface {p3}, Landroid/toolkit/IToolkitServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/android/server/am/ToolkitManagerService$HostAppDeathRecipient;

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/ToolkitManagerService$HostAppDeathRecipient;-><init>(Lcom/android/server/am/ToolkitManagerService;Lcom/android/server/am/ToolkitManagerService$1;)V

    invoke-interface {v1, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v1, p0, Lcom/android/server/am/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    iget-object v2, p0, Lcom/android/server/am/ToolkitManagerService;->mCurrentHostItem:Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    invoke-virtual {v1, p3, v2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5f

    const-string v1, "ToolkitManagerService"

    const-string v2, "registerCallback failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5f
    invoke-direct {p0}, Lcom/android/server/am/ToolkitManagerService;->load()V

    invoke-direct {p0, v4}, Lcom/android/server/am/ToolkitManagerService;->setStatus(I)V

    goto :goto_25
.end method

.method public showToolkitBar(I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/am/ToolkitManagerService;->mShowingTab:Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/am/ToolkitManagerService;->mTabList:Ljava/util/ArrayList;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/android/server/am/ToolkitManagerService;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_16

    :cond_13
    invoke-direct {p0}, Lcom/android/server/am/ToolkitManagerService;->startEmptyActivity()V

    :cond_16
    packed-switch p1, :pswitch_data_5a

    iget-object v2, p0, Lcom/android/server/am/ToolkitManagerService;->mPluginDataHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1f
    if-eq p1, v4, :cond_4c

    iget-object v2, p0, Lcom/android/server/am/ToolkitManagerService;->mContentsRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_4c

    iget-object v2, p0, Lcom/android/server/am/ToolkitManagerService;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, p0, Lcom/android/server/am/ToolkitManagerService;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-nez v2, :cond_4c

    :cond_35
    iget-object v2, p0, Lcom/android/server/am/ToolkitManagerService;->mOriginalContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-eqz v2, :cond_4c

    iget-object v2, p0, Lcom/android/server/am/ToolkitManagerService;->mOriginalContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-eqz v2, :cond_4c

    iget-object v2, p0, Lcom/android/server/am/ToolkitManagerService;->mContentsRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/am/ToolkitManagerService;->mOriginalContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_4c
    invoke-direct {p0, v4}, Lcom/android/server/am/ToolkitManagerService;->setStatus(I)V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :pswitch_53
    iget-object v2, p0, Lcom/android/server/am/ToolkitManagerService;->mPluginDataHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1f

    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_53
    .end packed-switch
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 9

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    invoke-direct {v4, p0, p1}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;-><init>(Lcom/android/server/am/ToolkitManagerService;Landroid/content/Intent;)V

    iget-object v5, p0, Lcom/android/server/am/ToolkitManagerService;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    invoke-virtual {v4, v1}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->equalPackage(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-direct {p0, v5, v1, v6}, Lcom/android/server/am/ToolkitManagerService;->SendMessage(ILjava/lang/Object;I)V

    :goto_26
    return-void

    :cond_27
    invoke-virtual {v4}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->makeIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v5, "android.sec.toolkit"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/am/ToolkitManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_26
.end method

.method public unregisterCallback(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v7, 0x1

    if-eqz p1, :cond_45

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/am/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    new-instance v3, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;-><init>(Lcom/android/server/am/ToolkitManagerService;Ljava/lang/String;Ljava/lang/String;)V

    if-lez v0, :cond_3d

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v0, :cond_2e

    iget-object v6, p0, Lcom/android/server/am/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;

    invoke-virtual {v3, v6}, Lcom/android/server/am/ToolkitManagerService$ToolkitTabItem;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_42

    iget-object v6, p0, Lcom/android/server/am/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/toolkit/IToolkitServiceCallback;

    :cond_2e
    iget-object v6, p0, Lcom/android/server/am/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    if-eqz v1, :cond_3d

    iget-object v6, p0, Lcom/android/server/am/ToolkitManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    invoke-direct {p0, v7, p1, p2}, Lcom/android/server/am/ToolkitManagerService;->notifyCallbackChange(ILjava/lang/String;Ljava/lang/String;)V

    :cond_3d
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v6, v7

    :goto_41
    return v6

    :cond_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_45
    const/4 v6, 0x0

    goto :goto_41
.end method
