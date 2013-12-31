.class public Lcom/android/server/sec/InternalClipboardExService;
.super Landroid/sec/clipboard/IClipboardService$Stub;
.source "InternalClipboardExService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sec/InternalClipboardExService$KNOXReceiver;,
        Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;
    }
.end annotation


# static fields
.field private static sService:Landroid/content/IClipboard;


# instance fields
.field private final ADD_ITEM:I

.field private final MSG_DISMISS_DIALOG:I

.field private final MSG_SHOW_DIALOG:I

.field private final MSG_UPDATE_DIALOG:I

.field private edm:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;

.field private mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

.field private mClipBoardDataUiEventImp:Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;

.field private mClipboardFormatList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mClipboardFormatListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sec/clipboard/IClipboardFormatListener;",
            ">;"
        }
    .end annotation
.end field

.field private mClipboardWorkingFormUiInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

.field private mContainerID:I

.field private mContext:Landroid/content/Context;

.field private mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

.field private mEnableFormatId:I

.field private final mHandler:Landroid/os/Handler;

.field private mIsCalledPasteApp:Z

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/sec/InternalClipboardExService;->sService:Landroid/content/IClipboard;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/sec/clipboard/IClipboardService$Stub;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatListenerList:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    iput-object v6, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardWorkingFormUiInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    new-instance v1, Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;

    invoke-direct {v1, p0, v6}, Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;-><init>(Lcom/android/server/sec/InternalClipboardExService;Lcom/android/server/sec/InternalClipboardExService$1;)V

    iput-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipBoardDataUiEventImp:Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;

    iput v3, p0, Lcom/android/server/sec/InternalClipboardExService;->ADD_ITEM:I

    iput-boolean v2, p0, Lcom/android/server/sec/InternalClipboardExService;->mIsCalledPasteApp:Z

    iput v3, p0, Lcom/android/server/sec/InternalClipboardExService;->MSG_SHOW_DIALOG:I

    iput v4, p0, Lcom/android/server/sec/InternalClipboardExService;->MSG_UPDATE_DIALOG:I

    iput v5, p0, Lcom/android/server/sec/InternalClipboardExService;->MSG_DISMISS_DIALOG:I

    new-instance v1, Lcom/android/server/sec/InternalClipboardExService$3;

    invoke-direct {v1, p0}, Lcom/android/server/sec/InternalClipboardExService$3;-><init>(Lcom/android/server/sec/InternalClipboardExService;)V

    iput-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;

    iput v2, p0, Lcom/android/server/sec/InternalClipboardExService;->mContainerID:I

    new-instance v1, Landroid/sec/clipboard/data/ClipboardDataMgr;

    const/16 v2, 0x14

    iget v3, p0, Lcom/android/server/sec/InternalClipboardExService;->mContainerID:I

    invoke-direct {v1, v2, v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;-><init>(II)V

    iput-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v1, :cond_57

    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    :cond_57
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Text"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Bitmap"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "HTMLFlagment"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "enterprise.container.remove.progress"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "enterprise.container.uninstalled"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/sec/InternalClipboardExService$KNOXReceiver;

    invoke-direct {v2, p0}, Lcom/android/server/sec/InternalClipboardExService$KNOXReceiver;-><init>(Lcom/android/server/sec/InternalClipboardExService;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    .registers 2

    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardWorkingFormUiInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;
    .registers 2

    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/sec/InternalClipboardExService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/sec/InternalClipboardExService;->mIsCalledPasteApp:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/sec/InternalClipboardExService;ILandroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/ClipboardData;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/sec/InternalClipboardExService;->addData(ILandroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;
    .registers 2

    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/sec/InternalClipboardExService;Lcom/android/server/sec/ClippedDataPickerDialog;)Lcom/android/server/sec/ClippedDataPickerDialog;
    .registers 2

    iput-object p1, p0, Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/sec/InternalClipboardExService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/sec/InternalClipboardExService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mContainerID:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/sec/InternalClipboardExService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mEnableFormatId:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/IClipboardDataPasteEvent;
    .registers 2

    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    return-object v0
.end method

.method private addData(ILandroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/ClipboardData;
    .registers 15

    const/4 v11, 0x0

    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v8, :cond_c

    const-string v8, "ClipboardServiceEx"

    const-string v9, "addData.."

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const/4 v0, 0x0

    invoke-direct {p0, p2}, Lcom/android/server/sec/InternalClipboardExService;->checkEquals(Landroid/sec/clipboard/data/ClipboardData;)Z

    move-result v8

    if-eqz v8, :cond_5a

    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v8, :cond_33

    const-string v8, "ClipboardServiceEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "The data are the same.:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    packed-switch p1, :pswitch_data_ba

    :goto_36
    move-object v1, v0

    :goto_37
    return-object v1

    :pswitch_38
    move-object v7, p2

    check-cast v7, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    invoke-virtual {v7}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetBitmapPath()Ljava/lang/String;

    move-result-object v6

    const-string v3, ""

    invoke-virtual {v7}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->HasExtraData()Z

    move-result v8

    if-eqz v8, :cond_4b

    invoke-virtual {v7}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetExtraDataPath()Ljava/lang/String;

    move-result-object v3

    :cond_4b
    invoke-direct {p0, v6, v3}, Lcom/android/server/sec/InternalClipboardExService;->deleteTempFileFromClipboardSaveService(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_36

    :pswitch_4f
    move-object v5, p2

    check-cast v5, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    invoke-virtual {v5}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->GetFirstImgPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v11}, Lcom/android/server/sec/InternalClipboardExService;->deleteTempFileFromClipboardSaveService(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_36

    :cond_5a
    invoke-virtual {p2, p1}, Landroid/sec/clipboard/data/ClipboardData;->GetAlternateFormat(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v2

    iget-object v8, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v8, v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->addData(Landroid/sec/clipboard/data/ClipboardData;)Z

    move-result v8

    if-eqz v8, :cond_8c

    iget-object v8, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/sec/InternalClipboardExService;->updateDataListChange(Landroid/sec/clipboard/data/ClipboardData;)V

    iget-object v8, p0, Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;

    if-eqz v8, :cond_87

    iget-object v8, p0, Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v8, v8, Lcom/android/server/sec/ClippedDataPickerDialog;->mShowingMenu:Landroid/view/Menu;

    if-eqz v8, :cond_87

    iget-object v8, p0, Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-boolean v8, v8, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsShowingContextmenu:Z

    if-eqz v8, :cond_87

    iget-object v8, p0, Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v8, v8, Lcom/android/server/sec/ClippedDataPickerDialog;->mShowingMenu:Landroid/view/Menu;

    invoke-interface {v8}, Landroid/view/Menu;->close()V

    :cond_87
    :goto_87
    packed-switch p1, :pswitch_data_c2

    :goto_8a
    move-object v1, v0

    goto :goto_37

    :cond_8c
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v8, :cond_87

    const-string v8, "ClipboardServiceEx"

    const-string v9, "Failed to add data."

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_87

    :pswitch_98
    move-object v7, p2

    check-cast v7, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    invoke-virtual {v7}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetBitmapPath()Ljava/lang/String;

    move-result-object v6

    const-string v3, ""

    invoke-virtual {v7}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->HasExtraData()Z

    move-result v8

    if-eqz v8, :cond_ab

    invoke-virtual {v7}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetExtraDataPath()Ljava/lang/String;

    move-result-object v3

    :cond_ab
    invoke-direct {p0, v6, v3}, Lcom/android/server/sec/InternalClipboardExService;->deleteTempFileFromClipboardSaveService(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8a

    :pswitch_af
    move-object v5, p2

    check-cast v5, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    invoke-virtual {v5}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->GetFirstImgPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v11}, Lcom/android/server/sec/InternalClipboardExService;->deleteTempFileFromClipboardSaveService(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8a

    :pswitch_data_ba
    .packed-switch 0x3
        :pswitch_38
        :pswitch_4f
    .end packed-switch

    :pswitch_data_c2
    .packed-switch 0x3
        :pswitch_98
        :pswitch_af
    .end packed-switch
.end method

.method private checkEquals(Landroid/sec/clipboard/data/ClipboardData;)Z
    .registers 7

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v3

    if-gtz v3, :cond_b

    move v2, v1

    :goto_a
    return v2

    :cond_b
    iget-object v3, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v3

    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v4

    if-eq v3, v4, :cond_1e

    move v2, v1

    goto :goto_a

    :cond_1e
    invoke-virtual {v0, p1}, Landroid/sec/clipboard/data/ClipboardData;->equals(Ljava/lang/Object;)Z

    move-result v1

    move v2, v1

    goto :goto_a
.end method

.method private clearDataList()V
    .registers 4

    iget-object v2, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_11

    iget-object v2, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v2, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeData(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_11
    return-void
.end method

.method private deleteTempFileFromClipboardSaveService(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_4e

    if-eqz p1, :cond_4e

    const-string v1, "com.samsung.clipboardsaveservice"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4e

    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_19

    const-string v1, "ClipboardServiceEx"

    const-string v2, "Delete intent will be called"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    const/4 v0, 0x0

    const-string v1, "data/data1/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f

    new-instance v0, Landroid/content/Intent;

    const-string v1, "sec_container_1.com.samsung.clipboardsaveservice.CLIPBOARD_DELETE_RECEIVER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_29
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "deletePath"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_40

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_40

    const-string v1, "extraDataPath"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_40
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_4e
    return-void

    :cond_4f
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.clipboardsaveservice.CLIPBOARD_DELETE_RECEIVER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_29
.end method

.method private dump()V
    .registers 6

    iget-object v2, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v1

    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_11

    const-string v2, "ClipboardServiceEx"

    const-string v3, "====================================================="

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    const/4 v0, 0x0

    :goto_12
    if-ge v0, v1, :cond_47

    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v2, :cond_44

    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " [ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v4, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_47
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_52

    const-string v2, "ClipboardServiceEx"

    const-string v3, "====================================================="

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    return-void
.end method

.method private static getService()Landroid/content/IClipboard;
    .registers 3

    sget-object v1, Lcom/android/server/sec/InternalClipboardExService;->sService:Landroid/content/IClipboard;

    if-eqz v1, :cond_7

    sget-object v1, Lcom/android/server/sec/InternalClipboardExService;->sService:Landroid/content/IClipboard;

    :goto_6
    return-object v1

    :cond_7
    const-string v1, "clipboard"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IClipboard$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IClipboard;

    move-result-object v1

    sput-object v1, Lcom/android/server/sec/InternalClipboardExService;->sService:Landroid/content/IClipboard;

    sget-object v1, Lcom/android/server/sec/InternalClipboardExService;->sService:Landroid/content/IClipboard;

    if-nez v1, :cond_22

    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_22

    const-string v1, "ClipboardServiceEx"

    const-string v2, "Original clipboard service is null!"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    sget-object v1, Lcom/android/server/sec/InternalClipboardExService;->sService:Landroid/content/IClipboard;

    goto :goto_6
.end method

.method private sendOriginalClipboardData(Landroid/sec/clipboard/data/ClipboardData;Ljava/lang/String;)V
    .registers 11

    const/4 v6, 0x2

    :try_start_1
    invoke-static {}, Lcom/android/server/sec/InternalClipboardExService;->getService()Landroid/content/IClipboard;

    move-result-object v4

    iget v5, p0, Lcom/android/server/sec/InternalClipboardExService;->mContainerID:I

    invoke-interface {v4, v5}, Landroid/content/IClipboard;->UpdateClipboardDB(I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_2f

    :goto_a
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v4

    if-ne v4, v6, :cond_39

    move-object v2, p1

    check-cast v2, Landroid/sec/clipboard/data/list/ClipboardDataText;

    :try_start_13
    invoke-static {}, Lcom/android/server/sec/InternalClipboardExService;->getService()Landroid/content/IClipboard;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v5

    invoke-interface {v4, v5, p2}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V

    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_2e

    const-string v4, "ClipboardServiceEx"

    const-string v5, "String was copied.(FORMAT_TEXT_ID)"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_2e} :catch_34

    :cond_2e
    :goto_2e
    return-void

    :catch_2f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a

    :catch_34
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2e

    :cond_39
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_69

    new-instance v2, Landroid/sec/clipboard/data/list/ClipboardDataText;

    invoke-direct {v2}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    invoke-virtual {p1, v6, v2}, Landroid/sec/clipboard/data/ClipboardData;->SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z

    :try_start_48
    invoke-static {}, Lcom/android/server/sec/InternalClipboardExService;->getService()Landroid/content/IClipboard;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v5

    invoke-interface {v4, v5, p2}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V

    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_2e

    const-string v4, "ClipboardServiceEx"

    const-string v5, "String was copied.(FORMAT_HTML_FLAGMENT_ID)"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_63} :catch_64

    goto :goto_2e

    :catch_64
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2e

    :cond_69
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_9a

    move-object v3, p1

    check-cast v3, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    :try_start_73
    invoke-static {}, Lcom/android/server/sec/InternalClipboardExService;->getService()Landroid/content/IClipboard;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->GetUri()Landroid/net/Uri;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v5

    invoke-interface {v4, v5, p2}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V

    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_2e

    const-string v4, "ClipboardServiceEx"

    const-string v5, "String was copied.(FORMAT_URI_ID)"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_94} :catch_95

    goto :goto_2e

    :catch_95
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2e

    :cond_9a
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_2e

    move-object v1, p1

    check-cast v1, Landroid/sec/clipboard/data/list/ClipboardDataIntent;

    :try_start_a4
    invoke-static {}, Lcom/android/server/sec/InternalClipboardExService;->getService()Landroid/content/IClipboard;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1}, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->GetIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/content/ClipData;->newIntent(Ljava/lang/CharSequence;Landroid/content/Intent;)Landroid/content/ClipData;

    move-result-object v5

    invoke-interface {v4, v5, p2}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V

    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_2e

    const-string v4, "ClipboardServiceEx"

    const-string v5, "String was copied.(FORMAT_INTENT_ID)"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_bf} :catch_c1

    goto/16 :goto_2e

    :catch_c1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2e
.end method

.method private updateDataListChange(Landroid/sec/clipboard/data/ClipboardData;)V
    .registers 5

    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardWorkingFormUiInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    if-eqz v1, :cond_17

    if-eqz p1, :cond_17

    :try_start_6
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_11

    const-string v1, "ClipboardServiceEx"

    const-string v2, "change list..."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardWorkingFormUiInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->setClipboardDataListChange(I)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_17} :catch_21

    :cond_17
    :goto_17
    if-eqz p1, :cond_20

    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/sec/InternalClipboardExService;->ObserverUpdate(ILandroid/sec/clipboard/data/ClipboardData;)V

    :cond_20
    return-void

    :catch_21
    move-exception v0

    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_17

    const-string v1, "ClipboardServiceEx"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method


# virtual methods
.method public AddClipboardFormatListener(Landroid/sec/clipboard/IClipboardFormatListener;)Z
    .registers 4

    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const/4 v0, 0x1

    :goto_9
    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public GetClipboardData(I)Landroid/sec/clipboard/data/ClipboardData;
    .registers 9

    const/4 v6, 0x1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_3
    iget-object v3, p0, Lcom/android/server/sec/InternalClipboardExService;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v3

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/android/server/sec/InternalClipboardExService;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v3}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v3

    if-nez v3, :cond_1a

    :cond_14
    invoke-direct {p0}, Lcom/android/server/sec/InternalClipboardExService;->clearDataList()V

    const/4 v3, 0x0

    monitor-exit p0

    :goto_19
    return-object v3

    :cond_1a
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    if-eqz v3, :cond_25

    iget-object v3, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v2

    :cond_25
    if-ge v2, v6, :cond_2a

    monitor-exit p0

    move-object v3, v0

    goto :goto_19

    :cond_2a
    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v1

    if-eqz v1, :cond_6a

    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_5e

    const-string v3, "ClipboardServiceEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getItem id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", input id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5e
    if-eq p1, v6, :cond_6d

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v3

    if-eq v3, p1, :cond_6d

    invoke-virtual {v1, p1}, Landroid/sec/clipboard/data/ClipboardData;->GetAlternateFormat(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    :cond_6a
    :goto_6a
    monitor-exit p0

    move-object v3, v0

    goto :goto_19

    :cond_6d
    move-object v0, v1

    goto :goto_6a

    :catchall_6f
    move-exception v3

    monitor-exit p0
    :try_end_71
    .catchall {:try_start_3 .. :try_end_71} :catchall_6f

    throw v3
.end method

.method public GetClipboardFormatName(I)Ljava/lang/String;
    .registers 5

    const-string v0, ""

    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_1a
    return-object v0
.end method

.method public IsShowUIClipboardData()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-virtual {v1}, Lcom/android/server/sec/ClippedDataPickerDialog;->isShowing()Z

    move-result v0

    :cond_b
    return v0
.end method

.method public ObserverUpdate(ILandroid/sec/clipboard/data/ClipboardData;)V
    .registers 7

    iget-object v3, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatListenerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/IClipboardFormatListener;

    :try_start_12
    invoke-interface {v0, p1, p2}, Landroid/sec/clipboard/IClipboardFormatListener;->onNewClipboardData(ILandroid/sec/clipboard/data/ClipboardData;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_6

    :catch_16
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_6

    :cond_1b
    return-void
.end method

.method public RegistClipboardWorkingFormUiInterface(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardWorkingFormUiInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardWorkingFormUiInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardWorkingFormUiInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-interface {v0, v1}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->setClipboardDataMgr(Landroid/sec/clipboard/data/IClipboardDataList;)V

    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardWorkingFormUiInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipBoardDataUiEventImp:Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;

    invoke-interface {v0, v1}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->setClipboardDataUiEvent(Landroid/sec/clipboard/IClipboardDataUiEvent;)V

    :cond_15
    :goto_15
    monitor-exit p0

    return-void

    :cond_17
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_15

    const-string v0, "ClipboardServiceEx"

    const-string v1, "RegistClipboardWorkingFormUiInterface is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    :catchall_23
    move-exception v0

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_23

    throw v0
.end method

.method public RegisterClipboardFormat(Ljava/lang/String;)I
    .registers 9

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1b

    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    add-int/lit8 v1, v5, 0x2

    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    :goto_1a
    return v1

    :cond_1b
    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_25

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1a
.end method

.method public RemoveClipboardFormatListener(Landroid/sec/clipboard/IClipboardFormatListener;)Z
    .registers 4

    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_d
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public SetClipboardData(ILandroid/sec/clipboard/data/ClipboardData;Ljava/lang/String;)Z
    .registers 8

    const/4 v1, 0x0

    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_c

    const-string v2, "ClipboardServiceEx"

    const-string v3, "==================================================================="

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const/4 v0, 0x0

    monitor-enter p0

    :try_start_e
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_19

    const-string v2, "ClipboardServiceEx"

    const-string v3, "----------------------------------------------------------------"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_24

    const-string v2, "ClipboardServiceEx"

    const-string v3, "in synchronized"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    iget-object v2, p0, Lcom/android/server/sec/InternalClipboardExService;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v2

    if-nez v2, :cond_32

    invoke-direct {p0}, Lcom/android/server/sec/InternalClipboardExService;->clearDataList()V

    monitor-exit p0

    :goto_31
    return v1

    :cond_32
    if-nez p2, :cond_39

    monitor-exit p0

    goto :goto_31

    :catchall_36
    move-exception v1

    monitor-exit p0
    :try_end_38
    .catchall {:try_start_e .. :try_end_38} :catchall_36

    throw v1

    :cond_39
    :try_start_39
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v1}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v1

    if-nez v1, :cond_67

    invoke-direct {p0, p2, p3}, Lcom/android/server/sec/InternalClipboardExService;->sendOriginalClipboardData(Landroid/sec/clipboard/data/ClipboardData;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/sec/InternalClipboardExService;->clearDataList()V

    const/4 v0, 0x1

    :cond_48
    :goto_48
    monitor-exit p0
    :try_end_49
    .catchall {:try_start_39 .. :try_end_49} :catchall_36

    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_65

    const-string v1, "ClipboardServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==================================================================="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_65
    move v1, v0

    goto :goto_31

    :cond_67
    :try_start_67
    invoke-direct {p0, p1, p2}, Lcom/android/server/sec/InternalClipboardExService;->addData(ILandroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v1

    if-eqz v1, :cond_48

    invoke-direct {p0, p2, p3}, Lcom/android/server/sec/InternalClipboardExService;->sendOriginalClipboardData(Landroid/sec/clipboard/data/ClipboardData;Ljava/lang/String;)V
    :try_end_70
    .catchall {:try_start_67 .. :try_end_70} :catchall_36

    const/4 v0, 0x1

    goto :goto_48
.end method

.method public SetClipboardDataOriginalToEx(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .registers 8

    const/4 v1, 0x1

    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_c

    const-string v2, "ClipboardServiceEx"

    const-string v3, "==================================================================="

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_17

    const-string v2, "ClipboardServiceEx"

    const-string v3, "SetClipboardDataOriginalToEx"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v2, :cond_37

    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SetClipboardData : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    iget-object v2, p0, Lcom/android/server/sec/InternalClipboardExService;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v2, v1}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v2

    if-eqz v2, :cond_47

    iget-object v2, p0, Lcom/android/server/sec/InternalClipboardExService;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v2}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v2

    if-nez v2, :cond_4c

    :cond_47
    invoke-direct {p0}, Lcom/android/server/sec/InternalClipboardExService;->clearDataList()V

    const/4 v1, 0x0

    :cond_4b
    :goto_4b
    return v1

    :cond_4c
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/sec/InternalClipboardExService$2;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/server/sec/InternalClipboardExService$2;-><init>(Lcom/android/server/sec/InternalClipboardExService;Landroid/sec/clipboard/data/ClipboardData;I)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_4b

    const-string v2, "ClipboardServiceEx"

    const-string v3, "==================================================================="

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b
.end method

.method public SetSyncClipboardData(Ljava/lang/CharSequence;)Z
    .registers 6

    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_b

    const-string v2, "ClipboardServiceEx"

    const-string v3, "SetSyncClipboardData"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataText;

    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/sec/InternalClipboardExService$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/sec/InternalClipboardExService$1;-><init>(Lcom/android/server/sec/InternalClipboardExService;Landroid/sec/clipboard/data/list/ClipboardDataText;Ljava/lang/CharSequence;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const/4 v2, 0x1

    return v2
.end method

.method public ShowUIClipboardData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x1

    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "ClipboardServiceEx"

    const-string v1, "show ui clipboard dialog in service"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iput p1, p0, Lcom/android/server/sec/InternalClipboardExService;->mEnableFormatId:I

    iput-object p2, p0, Lcom/android/server/sec/InternalClipboardExService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public UpdateClipboardDB(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mContainerID:I

    if-eq v0, p1, :cond_d

    iput p1, p0, Lcom/android/server/sec/InternalClipboardExService;->mContainerID:I

    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    iget v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mContainerID:I

    invoke-virtual {v0, v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->UpdateClipboardDB(I)V

    :cond_d
    return-void
.end method

.method public UpdateUIClipboardData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/android/server/sec/InternalClipboardExService;->IsShowUIClipboardData()Z

    move-result v0

    if-nez v0, :cond_8

    :goto_7
    return-void

    :cond_8
    iput p1, p0, Lcom/android/server/sec/InternalClipboardExService;->mEnableFormatId:I

    iput-object p2, p0, Lcom/android/server/sec/InternalClipboardExService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_7
.end method

.method public callPasteMenuFromApp(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x1

    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_1d

    const-string v0, "ClipboardServiceEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callPasteMenuFromApp() in service. enabled :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    if-nez p1, :cond_22

    iput-boolean v3, p0, Lcom/android/server/sec/InternalClipboardExService;->mIsCalledPasteApp:Z

    :cond_21
    :goto_21
    return-void

    :cond_22
    if-ne p1, v3, :cond_28

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mIsCalledPasteApp:Z

    goto :goto_21

    :cond_28
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_21

    const-string v0, "ClipboardServiceEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wrong param in setPastedFromApp() enabled :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method public dismissUIDataDialog()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public getClipedStrings(II)Ljava/util/ArrayList;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_7
    iget-object v10, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v10}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v10

    if-ge v3, v10, :cond_40

    iget-object v10, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v10, v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_7e

    move-object v8, v1

    check-cast v8, Landroid/sec/clipboard/data/list/ClipboardDataText;

    invoke-virtual {v8}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_72

    if-nez p1, :cond_41

    invoke-virtual {v8}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ne v10, p2, :cond_72

    :cond_40
    :goto_40
    return-object v5

    :cond_41
    new-instance v7, Landroid/util/secutil/SmartParser;

    invoke-virtual {v8}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v10, v11}, Landroid/util/secutil/SmartParser;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v7}, Landroid/util/secutil/SmartParser;->getTotalData()Landroid/util/secutil/SmartParsingData;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/util/secutil/SmartParsingData;->getCount(I)I

    move-result v10

    if-lez v10, :cond_72

    invoke-virtual {v9, p1}, Landroid/util/secutil/SmartParsingData;->getInfo(I)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v4, 0x0

    :goto_5f
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_72

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ne v10, p2, :cond_7b

    :cond_72
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-eq v10, p2, :cond_40

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_7b
    add-int/lit8 v4, v4, 0x1

    goto :goto_5f

    :cond_7e
    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_72

    move-object v2, v1

    check-cast v2, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_72

    if-nez p1, :cond_a2

    invoke-virtual {v2}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ne v10, p2, :cond_72

    goto :goto_40

    :cond_a2
    new-instance v7, Landroid/util/secutil/SmartParser;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->getText()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v10, v11}, Landroid/util/secutil/SmartParser;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v7}, Landroid/util/secutil/SmartParser;->getTotalData()Landroid/util/secutil/SmartParsingData;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/util/secutil/SmartParsingData;->getCount(I)I

    move-result v10

    if-lez v10, :cond_72

    invoke-virtual {v9, p1}, Landroid/util/secutil/SmartParsingData;->getInfo(I)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v4, 0x0

    :goto_bc
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_72

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-eq v10, p2, :cond_72

    add-int/lit8 v4, v4, 0x1

    goto :goto_bc
.end method

.method public getDataSize()I
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v1, v0}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v1}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v1

    if-nez v1, :cond_15

    :cond_11
    invoke-direct {p0}, Lcom/android/server/sec/InternalClipboardExService;->clearDataList()V

    :goto_14
    return v0

    :cond_15
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v0

    goto :goto_14
.end method

.method public iscalledPasteMenuFromApp()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_1e

    const-string v0, "ClipboardServiceEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iscalledPasteMenuFromApp() in service. mIsCalledPasteApp :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/sec/InternalClipboardExService;->mIsCalledPasteApp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    iget-boolean v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mIsCalledPasteApp:Z

    return v0
.end method

.method public showUIDataDialog()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;

    if-nez v0, :cond_11

    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_10

    const-string v0, "ClipboardServiceEx"

    const-string v1, "showUIDataDialog : Context is null."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_10
.end method
