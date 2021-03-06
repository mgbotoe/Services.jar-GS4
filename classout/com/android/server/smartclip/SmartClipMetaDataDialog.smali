.class public Lcom/android/server/smartclip/SmartClipMetaDataDialog;
.super Landroid/app/Dialog;
.source "SmartClipMetaDataDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/smartclip/SmartClipMetaDataDialog$SmartClipMetaDataWorkingFormUiInterfaceImp;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SmartClipMetaDataDialog"


# instance fields
.field private mBroadCastListener:Landroid/content/BroadcastReceiver;

.field private mCalledDismissIntentFromSIPFlag:Z

.field private mCancelButton:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mCurrentOrientation:I

.field private mCurrentPasteEvent:Landroid/sec/smartclipmetadata/ISmartClipMetaDataPasteEvent;

.field final mDismissIntentFromSIP:Ljava/lang/String;

.field final mDismissIntentFromStatusBar:Ljava/lang/String;

.field private mEnabledDismissIntent:Z

.field final mHomeResumeIntent:Ljava/lang/String;

.field private mHoverContent:Landroid/widget/LinearLayout;

.field private mHoverText:Landroid/widget/TextView;

.field private mIsAddedFilter:Z

.field private mMetaDataScrollView:Landroid/widget/HorizontalScrollView;

.field private mMetaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mMetaTagArrayDate:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

.field private mMetaTagArrayEmail:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

.field private mMetaTagArrayPhoneNumber:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

.field private mMetaTagArrayPlainText:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

.field private mMetaTagArrayTITLE:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

.field private mMetaTagArrayTime:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

.field private mMetaTagArrayURL:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

.field private mMetaTrayItemTypeCount:I

.field private mMetaTrayLayout:Landroid/widget/LinearLayout;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

.field private mScm:Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;

.field private mShouldBeDismissed:Z

.field private mSmartClipMetaDataUiEvent:Landroid/sec/smartclipmetadata/ISmartClipMetaDataUiEvent;

.field private mSmartClipMetaDataWorkingFormUiInterface:Lcom/android/server/smartclip/SmartClipMetaDataDialog$SmartClipMetaDataWorkingFormUiInterfaceImp;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    const v0, 0x1030338

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mScm:Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;

    iput-object v1, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mSmartClipMetaDataUiEvent:Landroid/sec/smartclipmetadata/ISmartClipMetaDataUiEvent;

    iput-object v1, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mCurrentPasteEvent:Landroid/sec/smartclipmetadata/ISmartClipMetaDataPasteEvent;

    iput-object v1, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mSmartClipMetaDataWorkingFormUiInterface:Lcom/android/server/smartclip/SmartClipMetaDataDialog$SmartClipMetaDataWorkingFormUiInterfaceImp;

    iput v3, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mCurrentOrientation:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mMetaList:Ljava/util/List;

    iput-object v1, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mHoverContent:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mHoverText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mMetaTagArrayPlainText:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    iput-object v1, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mMetaTagArrayEmail:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    iput-object v1, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mMetaTagArrayPhoneNumber:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    iput-object v1, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mMetaTagArrayURL:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    iput-object v1, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mMetaTagArrayTITLE:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    iput-object v1, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mMetaTagArrayDate:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    iput-object v1, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mMetaTagArrayTime:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    const-string v0, "DismissSmartClipDialogFromPhoneStatusBar"

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mDismissIntentFromStatusBar:Ljava/lang/String;

    const-string v0, "DismissSmartClipDialogFromIMMService"

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mDismissIntentFromSIP:Ljava/lang/String;

    const-string v0, "com.sec.android.intent.action.HOME_RESUME"

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mHomeResumeIntent:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mCalledDismissIntentFromSIPFlag:Z

    iput-boolean v2, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mShouldBeDismissed:Z

    iput-boolean v2, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mIsAddedFilter:Z

    iput-boolean v3, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mEnabledDismissIntent:Z

    new-instance v0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$1;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SmartClipMetaDataDialog$1;-><init>(Lcom/android/server/smartclip/SmartClipMetaDataDialog;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mBroadCastListener:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$2;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SmartClipMetaDataDialog$2;-><init>(Lcom/android/server/smartclip/SmartClipMetaDataDialog;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    iput-object p1, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;Lcom/samsung/android/smartclip/SmartClipDataRepository;)V
    .registers 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    const v0, 0x1030338

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mScm:Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;

    iput-object v1, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mSmartClipMetaDataUiEvent:Landroid/sec/smartclipmetadata/ISmartClipMetaDataUiEvent;

    iput-object v1, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mCurrentPasteEvent:Landroid/sec/smartclipmetadata/ISmartClipMetaDataPasteEvent;

    iput-object v1, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mSmartClipMetaDataWorkingFormUiInterface:Lcom/android/server/smartclip/SmartClipMetaDataDialog$SmartClipMetaDataWorkingFormUiInterfaceImp;

    iput v3, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mCurrentOrientation:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mMetaList:Ljava/util/List;

    iput-object v1, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mHoverContent:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mHoverText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mMetaTagArrayPlainText:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    iput-object v1, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mMetaTagArrayEmail:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    iput-object v1, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mMetaTagArrayPhoneNumber:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    iput-object v1, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mMetaTagArrayURL:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    iput-object v1, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mMetaTagArrayTITLE:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    iput-object v1, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mMetaTagArrayDate:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    iput-object v1, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mMetaTagArrayTime:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    const-string v0, "DismissSmartClipDialogFromPhoneStatusBar"

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mDismissIntentFromStatusBar:Ljava/lang/String;

    const-string v0, "DismissSmartClipDialogFromIMMService"

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mDismissIntentFromSIP:Ljava/lang/String;

    const-string v0, "com.sec.android.intent.action.HOME_RESUME"

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mHomeResumeIntent:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mCalledDismissIntentFromSIPFlag:Z

    iput-boolean v2, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mShouldBeDismissed:Z

    iput-boolean v2, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mIsAddedFilter:Z

    iput-boolean v3, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mEnabledDismissIntent:Z

    new-instance v0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$1;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SmartClipMetaDataDialog$1;-><init>(Lcom/android/server/smartclip/SmartClipMetaDataDialog;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mBroadCastListener:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/smartclip/SmartClipMetaDataDialog$2;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SmartClipMetaDataDialog$2;-><init>(Lcom/android/server/smartclip/SmartClipMetaDataDialog;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    iput-object p1, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mScm:Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;

    check-cast p3, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    iput-object p3, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/smartclip/SmartClipMetaDataDialog;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mCalledDismissIntentFromSIPFlag:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/smartclip/SmartClipMetaDataDialog;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mCalledDismissIntentFromSIPFlag:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/smartclip/SmartClipMetaDataDialog;)Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mScm:Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/smartclip/SmartClipMetaDataDialog;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mShouldBeDismissed:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/smartclip/SmartClipMetaDataDialog;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mShouldBeDismissed:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/smartclip/SmartClipMetaDataDialog;)Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    .registers 2

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/smartclip/SmartClipMetaDataDialog;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/smartclip/SmartClipMetaDataDialog;Landroid/sec/smartclipmetadata/ISmartClipMetaDataUiEvent;)Landroid/sec/smartclipmetadata/ISmartClipMetaDataUiEvent;
    .registers 2

    iput-object p1, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mSmartClipMetaDataUiEvent:Landroid/sec/smartclipmetadata/ISmartClipMetaDataUiEvent;

    return-object p1
.end method

.method private getAllMetaTagsByType()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    const-string v1, "plain_text"

    invoke-virtual {v0, v1}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getMetaTag(Ljava/lang/String;)Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mMetaTagArrayPlainText:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    const-string v1, "email"

    invoke-virtual {v0, v1}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getMetaTag(Ljava/lang/String;)Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mMetaTagArrayEmail:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    const-string v1, "phone_number"

    invoke-virtual {v0, v1}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getMetaTag(Ljava/lang/String;)Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mMetaTagArrayPhoneNumber:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    const-string v1, "url"

    invoke-virtual {v0, v1}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getMetaTag(Ljava/lang/String;)Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mMetaTagArrayURL:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getMetaTag(Ljava/lang/String;)Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mMetaTagArrayTITLE:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    const-string v1, "date"

    invoke-virtual {v0, v1}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getMetaTag(Ljava/lang/String;)Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mMetaTagArrayDate:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    const-string v1, "time"

    invoke-virtual {v0, v1}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getMetaTag(Ljava/lang/String;)Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mMetaTagArrayTime:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    return-void
.end method

.method private getMetaTrayItemTypeCount()I
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mMetaTagArrayPlainText:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v1}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->size()I

    move-result v1

    if-lez v1, :cond_b

    add-int/lit8 v0, v0, 0x1

    :cond_b
    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mMetaTagArrayURL:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v1}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->size()I

    move-result v1

    if-lez v1, :cond_15

    add-int/lit8 v0, v0, 0x1

    :cond_15
    return v0
.end method

.method private setMetaTrayLayout(I)V
    .registers 2

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 3

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    iget-boolean v1, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mEnabledDismissIntent:Z

    if-eqz v1, :cond_14

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/smartclip/SmartClipMetaDataDialog$4;

    invoke-direct {v1, p0}, Lcom/android/server/smartclip/SmartClipMetaDataDialog$4;-><init>(Lcom/android/server/smartclip/SmartClipMetaDataDialog;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_14
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public enabledDismissIntent(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mEnabledDismissIntent:Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10

    const/4 v7, 0x2

    const/4 v6, 0x1

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "DismissSmartClipDialogFromIMMService"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "DismissSmartClipDialogFromPhoneStatusBar"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "com.sec.android.intent.action.HOME_RESUME"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    if-eqz v3, :cond_3d

    iget-object v4, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v5, 0x20

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_3d
    invoke-virtual {p0}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mBroadCastListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v6, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mIsAddedFilter:Z

    invoke-virtual {p0}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x108

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v5, 0x100

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    if-eqz v0, :cond_dc

    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v7, :cond_ba

    iput v7, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mCurrentOrientation:I

    :goto_6e
    invoke-virtual {p0}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v4, 0x57

    invoke-virtual {v2, v4}, Landroid/view/Window;->setGravity(I)V

    const v4, 0x10900f9

    invoke-virtual {p0, v4}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->setContentView(I)V

    iget-object v4, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mScm:Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;

    if-nez v4, :cond_8f

    invoke-virtual {p0}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "smartclipMetadata"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;

    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mScm:Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;

    :cond_8f
    new-instance v4, Lcom/android/server/smartclip/SmartClipMetaDataDialog$SmartClipMetaDataWorkingFormUiInterfaceImp;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/server/smartclip/SmartClipMetaDataDialog$SmartClipMetaDataWorkingFormUiInterfaceImp;-><init>(Lcom/android/server/smartclip/SmartClipMetaDataDialog;Lcom/android/server/smartclip/SmartClipMetaDataDialog$1;)V

    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mSmartClipMetaDataWorkingFormUiInterface:Lcom/android/server/smartclip/SmartClipMetaDataDialog$SmartClipMetaDataWorkingFormUiInterfaceImp;

    iget-object v4, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mScm:Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;

    iget-object v5, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mSmartClipMetaDataWorkingFormUiInterface:Lcom/android/server/smartclip/SmartClipMetaDataDialog$SmartClipMetaDataWorkingFormUiInterfaceImp;

    invoke-virtual {v4, v5}, Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;->RegistSmartClipMetaDataWorkingFormUiInterface(Landroid/sec/smartclipmetadata/ISmartClipMetaDataWorkingFormUiInterface;)Z

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-virtual {v2, v4, v5}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {p0}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->rebuildView()V

    invoke-direct {p0}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->getAllMetaTagsByType()V

    invoke-direct {p0}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->getMetaTrayItemTypeCount()I

    move-result v4

    iput v4, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mMetaTrayItemTypeCount:I

    iget v4, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mMetaTrayItemTypeCount:I

    invoke-direct {p0, v4}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->setMetaTrayLayout(I)V

    iget-object v4, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mMetaList:Ljava/util/List;

    invoke-virtual {p0, v4}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->setMetaTrayDataInfo(Ljava/util/List;)V

    return-void

    :cond_ba
    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v6, :cond_c1

    iput v6, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mCurrentOrientation:I

    goto :goto_6e

    :cond_c1
    const-string v4, "SmartClipMetaDataDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "orientation does not accept. config.orientation :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6e

    :cond_dc
    const-string v4, "SmartClipMetaDataDialog"

    const-string v5, "config is null!!!!"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6e
.end method

.method protected onStart()V
    .registers 5

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    iget-boolean v2, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mIsAddedFilter:Z

    if-eqz v2, :cond_b

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mIsAddedFilter:Z

    :goto_a
    return-void

    :cond_b
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "DismissSmartClipDialogFromIMMService"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "DismissSmartClipDialogFromPhoneStatusBar"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.sec.android.intent.action.HOME_RESUME"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "SmartClipMetaDataDialog"

    const-string v3, "register PhoneStateListener"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_4a

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_4a
    invoke-virtual {p0}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mBroadCastListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_a
.end method

.method protected onStop()V
    .registers 4

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    invoke-virtual {p0}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mBroadCastListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string v1, "SmartClipMetaDataDialog"

    const-string v2, "unregister PhoneStateListener"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_28

    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    const/4 v0, 0x0

    :cond_28
    return-void
.end method

.method public rebuildView()V
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v2, 0x8a0

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    return-void
.end method

.method public setMetaTrayDataInfo(Ljava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;)V"
        }
    .end annotation

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v8, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mMetaTagArrayPlainText:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v8}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->size()I

    move-result v8

    if-lez v8, :cond_53

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mMetaTagArrayPlainText:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v8, v10}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    invoke-virtual {v8}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getValue()Ljava/lang/String;

    move-result-object v7

    const v8, 0x1080754

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mHoverText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v2, v2, 0x1

    :cond_53
    iget-object v8, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mMetaTagArrayURL:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v8}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->size()I

    move-result v8

    if-lez v8, :cond_de

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v7, ""

    const/4 v1, 0x0

    :goto_82
    iget-object v8, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mMetaTagArrayURL:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v8}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->size()I

    move-result v8

    if-ge v1, v8, :cond_bd

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v8, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mMetaTagArrayURL:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v8, v1}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    invoke-virtual {v8}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_82

    :cond_bd
    iget-object v8, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mMetaTagArrayURL:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v8}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v8, 0x1080750

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mHoverText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v2, v2, 0x1

    :cond_de
    return-void
.end method

.method public setSmartClipMetaDataPasteTargetViewInfo(Landroid/sec/smartclipmetadata/ISmartClipMetaDataPasteEvent;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mCurrentPasteEvent:Landroid/sec/smartclipmetadata/ISmartClipMetaDataPasteEvent;

    return-void
.end method

.method public show()V
    .registers 5

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/smartclip/SmartClipMetaDataDialog$3;

    invoke-direct {v2, p0}, Lcom/android/server/smartclip/SmartClipMetaDataDialog$3;-><init>(Lcom/android/server/smartclip/SmartClipMetaDataDialog;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    invoke-virtual {p0}, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    iget v3, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mCurrentOrientation:I

    if-eq v2, v3, :cond_2f

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mScm:Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mScm:Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;

    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipMetaDataDialog;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-virtual {v2, v3}, Landroid/sec/smartclipmetadata/SmartClipMetaDataManager;->showMetaDataTray(Lcom/samsung/android/smartclip/SmartClipDataRepository;)V

    :cond_2f
    return-void
.end method
