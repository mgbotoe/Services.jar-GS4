.class Lcom/android/server/TelephonyRegistry;
.super Lcom/android/internal/telephony/ITelephonyRegistry$Stub;
.source "TelephonyRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TelephonyRegistry$Record;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DBG_LOC:Z = false

.field private static final MSG_USER_SWITCHED:I = 0x1

.field static final PHONE_STATE_PERMISSION_MASK:I = 0xec

.field static final PHONE_STATE_PERMISSION_MASK_CDMA_DUN:I = 0x1ec

.field private static final TAG:Ljava/lang/String; = "TelephonyRegistry"

.field private static final mCallStateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/TelephonyRegistry$Record;",
            ">;"
        }
    .end annotation
.end field

.field private static final mRemoveCallStateListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mApnBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallForwarding:Z

.field private mCallIncomingNumber:Ljava/lang/String;

.field private mCallState:I

.field private mCellInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCellLocation:Landroid/os/Bundle;

.field private mConnectedApns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDataActivity:I

.field private mDataConnectionApn:Ljava/lang/String;

.field private mDataConnectionLinkCapabilities:Landroid/net/LinkCapabilities;

.field private mDataConnectionLinkProperties:Landroid/net/LinkProperties;

.field private mDataConnectionNetworkType:I

.field private mDataConnectionPossible:Z

.field private mDataConnectionReason:Ljava/lang/String;

.field private mDataConnectionState:I

.field private mDualSimSlotActivationState:Z

.field private mDunDataActivity:I

.field private mDunDataConnectionState:I

.field private mDunNetWorkType:I

.field private final mHandler:Landroid/os/Handler;

.field private mMessageWaiting:Z

.field private mOtaspMode:I

.field private final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/TelephonyRegistry$Record;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoveList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mSignalStrength:Landroid/telephony/SignalStrength;

.field private mSimId:Lcom/android/internal/telephony/PhoneConstants$SimId;

.field private mSimSlot:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/TelephonyRegistry;->mRemoveCallStateListenerList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/TelephonyRegistry;->mCallStateListeners:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    iput v1, p0, Lcom/android/server/TelephonyRegistry;->mCallState:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:Ljava/lang/String;

    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:Landroid/telephony/ServiceState;

    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    iput-boolean v1, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:Z

    iput-boolean v1, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:Z

    iput v1, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:I

    iput v1, p0, Lcom/android/server/TelephonyRegistry;->mDunDataActivity:I

    iput v1, p0, Lcom/android/server/TelephonyRegistry;->mDunNetWorkType:I

    iput v1, p0, Lcom/android/server/TelephonyRegistry;->mDunDataConnectionState:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    iput-boolean v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionApn:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/TelephonyRegistry;->mOtaspMode:I

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/List;

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mApnBlackList:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/server/TelephonyRegistry;->mDualSimSlotActivationState:Z

    new-instance v0, Lcom/android/server/TelephonyRegistry$1;

    invoke-direct {v0, p0}, Lcom/android/server/TelephonyRegistry$1;-><init>(Lcom/android/server/TelephonyRegistry;)V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/TelephonyRegistry$2;

    invoke-direct {v0, p0}, Lcom/android/server/TelephonyRegistry$2;-><init>(Lcom/android/server/TelephonyRegistry;)V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/TelephonyRegistry;->init(Landroid/content/Context;I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;I)V
    .registers 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    iput v1, p0, Lcom/android/server/TelephonyRegistry;->mCallState:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:Ljava/lang/String;

    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:Landroid/telephony/ServiceState;

    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    iput-boolean v1, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:Z

    iput-boolean v1, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:Z

    iput v1, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:I

    iput v1, p0, Lcom/android/server/TelephonyRegistry;->mDunDataActivity:I

    iput v1, p0, Lcom/android/server/TelephonyRegistry;->mDunNetWorkType:I

    iput v1, p0, Lcom/android/server/TelephonyRegistry;->mDunDataConnectionState:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    iput-boolean v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionApn:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/TelephonyRegistry;->mOtaspMode:I

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/List;

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mApnBlackList:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/server/TelephonyRegistry;->mDualSimSlotActivationState:Z

    new-instance v0, Lcom/android/server/TelephonyRegistry$1;

    invoke-direct {v0, p0}, Lcom/android/server/TelephonyRegistry$1;-><init>(Lcom/android/server/TelephonyRegistry;)V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/TelephonyRegistry$2;

    invoke-direct {v0, p0}, Lcom/android/server/TelephonyRegistry$2;-><init>(Lcom/android/server/TelephonyRegistry;)V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/TelephonyRegistry;->init(Landroid/content/Context;I)V

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/PhoneConstants$SimId;Landroid/content/Context;)V
    .registers 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    iput v1, p0, Lcom/android/server/TelephonyRegistry;->mCallState:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:Ljava/lang/String;

    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:Landroid/telephony/ServiceState;

    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    iput-boolean v1, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:Z

    iput-boolean v1, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:Z

    iput v1, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:I

    iput v1, p0, Lcom/android/server/TelephonyRegistry;->mDunDataActivity:I

    iput v1, p0, Lcom/android/server/TelephonyRegistry;->mDunNetWorkType:I

    iput v1, p0, Lcom/android/server/TelephonyRegistry;->mDunDataConnectionState:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    iput-boolean v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionApn:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/TelephonyRegistry;->mOtaspMode:I

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/List;

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mApnBlackList:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/server/TelephonyRegistry;->mDualSimSlotActivationState:Z

    new-instance v0, Lcom/android/server/TelephonyRegistry$1;

    invoke-direct {v0, p0}, Lcom/android/server/TelephonyRegistry$1;-><init>(Lcom/android/server/TelephonyRegistry;)V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/TelephonyRegistry$2;

    invoke-direct {v0, p0}, Lcom/android/server/TelephonyRegistry$2;-><init>(Lcom/android/server/TelephonyRegistry;)V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/TelephonyRegistry;->init(Lcom/android/internal/telephony/PhoneConstants$SimId;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/TelephonyRegistry;)Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/TelephonyRegistry;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private broadcastCallStateChanged(ILjava/lang/String;)V
    .registers 11

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    if-eq p1, v6, :cond_17

    if-eq p1, v7, :cond_17

    if-eq p1, v5, :cond_17

    if-nez p1, :cond_53

    :try_start_f
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneOff()V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_5b
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_59

    :goto_14
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_17
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.PHONE_STATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "state"

    invoke-static {p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertCallState(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneConstants$State;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_36

    const-string v3, "incoming_number"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_36
    if-eq p1, v6, :cond_3c

    if-eq p1, v7, :cond_3c

    if-ne p1, v5, :cond_49

    :cond_3c
    const-string v3, "TelephonyRegistry"

    const-string v4, "VOIP_CALLSTATE_CHANGE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "is_voip_callstate"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_49
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v5, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void

    :cond_53
    :try_start_53
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneOn()V
    :try_end_58
    .catchall {:try_start_53 .. :try_end_58} :catchall_5b
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_58} :catch_59

    goto :goto_14

    :catch_59
    move-exception v3

    goto :goto_14

    :catchall_5b
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private broadcastCallStateChanged(ILjava/lang/String;I)V
    .registers 12

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    if-eq p1, v6, :cond_17

    if-eq p1, v7, :cond_17

    if-eq p1, v5, :cond_17

    if-nez p1, :cond_66

    :try_start_f
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneOff()V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_6e
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_6c

    :goto_14
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_17
    const-string v3, "TelephonyRegistry"

    const-string v4, "broadcastCallStateChanged() !!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.PHONE_STATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "state"

    invoke-static {p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertCallState(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneConstants$State;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "simSlot"

    iget v4, p0, Lcom/android/server/TelephonyRegistry;->mSimSlot:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_44

    const-string v3, "incoming_number"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_44
    if-eq p1, v6, :cond_4a

    if-eq p1, v7, :cond_4a

    if-ne p1, v5, :cond_57

    :cond_4a
    const-string v3, "TelephonyRegistry"

    const-string v4, "VOIP_CALLSTATE_CHANGE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "is_voip_callstate"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_57
    const-string v3, "phoneIndex"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v5, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void

    :cond_66
    :try_start_66
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneOn()V
    :try_end_6b
    .catchall {:try_start_66 .. :try_end_6b} :catchall_6e
    .catch Landroid/os/RemoteException; {:try_start_66 .. :try_end_6b} :catch_6c

    goto :goto_14

    :catch_6c
    move-exception v3

    goto :goto_14

    :catchall_6e
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private broadcastDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "reason"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "apnType"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "simSlot"

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mSimSlot:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private broadcastDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "reason"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "apnType"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "phoneIndex"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private broadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;Z)V
    .registers 14

    const/4 v4, 0x1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "state"

    invoke-static {p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(I)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneConstants$DataState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-nez p2, :cond_1c

    const-string v2, "networkUnvailable"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1c
    if-eqz p3, :cond_23

    const-string v2, "reason"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_23
    if-eqz p6, :cond_35

    const-string v2, "linkProperties"

    invoke-virtual {v1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p6}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_35

    const-string v2, "iface"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_35
    if-eqz p7, :cond_3c

    const-string v2, "linkCapabilities"

    invoke-virtual {v1, v2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_3c
    if-eqz p8, :cond_43

    const-string v2, "networkRoaming"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_43
    const-string v2, "apn"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "apnType"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "simSlot"

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mSimSlot:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private broadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;ZI)V
    .registers 15

    const/4 v4, 0x1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "state"

    invoke-static {p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(I)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneConstants$DataState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-nez p2, :cond_1c

    const-string v2, "networkUnvailable"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1c
    if-eqz p3, :cond_23

    const-string v2, "reason"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_23
    if-eqz p6, :cond_35

    const-string v2, "linkProperties"

    invoke-virtual {v1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p6}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_35

    const-string v2, "iface"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_35
    if-eqz p7, :cond_3c

    const-string v2, "linkCapabilities"

    invoke-virtual {v1, v2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_3c
    if-eqz p8, :cond_43

    const-string v2, "networkRoaming"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_43
    const-string v2, "apn"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "apnType"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "phoneIndex"

    invoke-virtual {v1, v2, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private broadcastServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 8

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_4
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/internal/app/IBatteryStats;->notePhoneState(I)V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_31
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_36

    :goto_d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SERVICE_STATE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->fillInNotifierBundle(Landroid/os/Bundle;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v4, "simSlot"

    iget v5, p0, Lcom/android/server/TelephonyRegistry;->mSimSlot:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :catchall_31
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :catch_36
    move-exception v4

    goto :goto_d
.end method

.method private broadcastServiceStateChanged(Landroid/telephony/ServiceState;I)V
    .registers 9

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_4
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/internal/app/IBatteryStats;->notePhoneState(I)V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_3d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_42

    :goto_d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string v4, "TelephonyRegistry"

    const-string v5, "broadcastServiceStateChanged() !!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SERVICE_STATE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->fillInNotifierBundle(Landroid/os/Bundle;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v4, "phoneIndex"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "simSlot"

    iget v5, p0, Lcom/android/server/TelephonyRegistry;->mSimSlot:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :catchall_3d
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :catch_42
    move-exception v4

    goto :goto_d
.end method

.method private broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;)V
    .registers 8

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_4
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4, p1}, Lcom/android/internal/app/IBatteryStats;->notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_2b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_30

    :goto_9
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SIG_STR"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x2000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v0}, Landroid/telephony/SignalStrength;->fillInNotifierBundle(Landroid/os/Bundle;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :catchall_2b
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :catch_30
    move-exception v4

    goto :goto_9
.end method

.method private broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;I)V
    .registers 9

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_4
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4, p1}, Lcom/android/internal/app/IBatteryStats;->notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_37
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_3c

    :goto_9
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SIG_STR"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x2000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v0}, Landroid/telephony/SignalStrength;->fillInNotifierBundle(Landroid/os/Bundle;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v4, "phoneIndex"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "simSlot"

    iget v5, p0, Lcom/android/server/TelephonyRegistry;->mSimSlot:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :catchall_37
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :catch_3c
    move-exception v4

    goto :goto_9
.end method

.method private checkListenerPermission(I)V
    .registers 5

    const/4 v2, 0x0

    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    and-int/lit16 v0, p1, 0x400

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    and-int/lit16 v0, p1, 0xec

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    return-void
.end method

.method private checkNotifyPermission(Ljava/lang/String;)Z
    .registers 5

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_c

    const/4 v1, 0x1

    :goto_b
    return v1

    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Modify Phone State Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    goto :goto_b
.end method

.method private getCallStateForAllSims()I
    .registers 6

    const/4 v3, 0x2

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v4

    new-array v1, v4, [I

    const/4 v0, 0x0

    :goto_9
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v4

    if-ge v0, v4, :cond_1c

    invoke-static {v0}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/MultiSimTelephonyManager;->getCallState()I

    move-result v4

    aput v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v4

    if-ge v0, v4, :cond_2b

    aget v4, v1, v0

    if-ne v2, v4, :cond_28

    :goto_27
    return v2

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_2b
    const/4 v0, 0x0

    :goto_2c
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v2

    if-ge v0, v2, :cond_3b

    aget v2, v1, v0

    if-ne v3, v2, :cond_38

    move v2, v3

    goto :goto_27

    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    :cond_3b
    const/4 v2, 0x0

    goto :goto_27
.end method

.method private handleRemoveCallStateListenerListLocked()V
    .registers 4

    sget-object v2, Lcom/android/server/TelephonyRegistry;->mRemoveCallStateListenerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_23

    sget-object v2, Lcom/android/server/TelephonyRegistry;->mRemoveCallStateListenerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->removeCallStateListener(Landroid/os/IBinder;)V

    goto :goto_e

    :cond_1e
    sget-object v2, Lcom/android/server/TelephonyRegistry;->mRemoveCallStateListenerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_23
    return-void
.end method

.method private handleRemoveListLocked()V
    .registers 4

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_23

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_e

    :cond_1e
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_23
    return-void
.end method

.method private remove(Landroid/os/IBinder;)V
    .registers 6

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_3
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v1, :cond_22

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne v2, p1, :cond_1f

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    monitor-exit v3

    :goto_1e
    return-void

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_22
    monitor-exit v3

    goto :goto_1e

    :catchall_24
    move-exception v2

    monitor-exit v3
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v2
.end method

.method private removeCallStateListener(Landroid/os/IBinder;)V
    .registers 6

    sget-object v3, Lcom/android/server/TelephonyRegistry;->mCallStateListeners:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_3
    sget-object v2, Lcom/android/server/TelephonyRegistry;->mCallStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v1, :cond_22

    sget-object v2, Lcom/android/server/TelephonyRegistry;->mCallStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne v2, p1, :cond_1f

    sget-object v2, Lcom/android/server/TelephonyRegistry;->mCallStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    monitor-exit v3

    :goto_1e
    return-void

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_22
    monitor-exit v3

    goto :goto_1e

    :catchall_24
    move-exception v2

    monitor-exit v3
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v2
.end method

.method private validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z
    .registers 8

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v3, 0x0

    :try_start_5
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    iget v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    if-ne v4, v2, :cond_17

    iget v4, p1, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_19

    and-int/2addr v4, p2

    if-eqz v4, :cond_17

    const/4 v3, 0x1

    :goto_13
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_17
    const/4 v3, 0x0

    goto :goto_13

    :catchall_19
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 13

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.DUMP"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_33

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permission Denial: can\'t dump telephony.registry from from pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_32
    return-void

    :cond_33
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v6

    :try_start_36
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-string v5, "last known state:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mCallState="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/android/server/TelephonyRegistry;->mCallState:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mCallIncomingNumber="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mServiceState="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mSignalStrength="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mMessageWaiting="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mCallForwarding="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mDataActivity="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mDataConnectionState="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mDataConnectionPossible="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mDataConnectionReason="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mDataConnectionApn="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionApn:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mDataConnectionLinkProperties="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mDataConnectionLinkCapabilities="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkCapabilities:Landroid/net/LinkCapabilities;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mCellLocation="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mCellInfo="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/List;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "registrations: count="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1fd

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v3, Lcom/android/server/TelephonyRegistry$Record;->pkgForDebug:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " 0x"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v3, Lcom/android/server/TelephonyRegistry$Record;->events:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1c5

    :catchall_1fa
    move-exception v5

    monitor-exit v6
    :try_end_1fc
    .catchall {:try_start_36 .. :try_end_1fc} :catchall_1fa

    throw v5

    :cond_1fd
    :try_start_1fd
    sget-object v7, Lcom/android/server/TelephonyRegistry;->mCallStateListeners:Ljava/util/ArrayList;

    monitor-enter v7
    :try_end_200
    .catchall {:try_start_1fd .. :try_end_200} :catchall_1fa

    :try_start_200
    sget-object v5, Lcom/android/server/TelephonyRegistry;->mCallStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "call state listeners: count="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_21d
    if-ge v0, v2, :cond_252

    sget-object v5, Lcom/android/server/TelephonyRegistry;->mCallStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, v3, Lcom/android/server/TelephonyRegistry$Record;->pkgForDebug:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " 0x"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, v3, Lcom/android/server/TelephonyRegistry$Record;->events:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_21d

    :cond_252
    monitor-exit v7
    :try_end_253
    .catchall {:try_start_200 .. :try_end_253} :catchall_256

    :try_start_253
    monitor-exit v6
    :try_end_254
    .catchall {:try_start_253 .. :try_end_254} :catchall_1fa

    goto/16 :goto_32

    :catchall_256
    move-exception v5

    :try_start_257
    monitor-exit v7
    :try_end_258
    .catchall {:try_start_257 .. :try_end_258} :catchall_256

    :try_start_258
    throw v5
    :try_end_259
    .catchall {:try_start_258 .. :try_end_259} :catchall_1fa
.end method

.method init(Landroid/content/Context;I)V
    .registers 9

    iput p2, p0, Lcom/android/server/TelephonyRegistry;->mSimSlot:I

    invoke-static {}, Landroid/telephony/CellLocation;->getEmpty()Landroid/telephony/CellLocation;

    move-result-object v2

    if-eqz v2, :cond_d

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/telephony/CellLocation;->fillInNotifierBundle(Landroid/os/Bundle;)V

    :cond_d
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mApnBlackList:Ljava/util/ArrayList;

    :try_start_23
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1070045

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mApnBlackList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string v3, "TelephonyRegistry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Block apn list: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mApnBlackList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_23 .. :try_end_51} :catch_52

    :goto_51
    return-void

    :catch_52
    move-exception v1

    const-string v3, "TelephonyRegistry"

    const-string v4, "Block apn list not found."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51
.end method

.method init(Lcom/android/internal/telephony/PhoneConstants$SimId;Landroid/content/Context;)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mSimId:Lcom/android/internal/telephony/PhoneConstants$SimId;

    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneConstants$SimId;->ordinal()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/CellLocation;->getEmpty(I)Landroid/telephony/CellLocation;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/telephony/CellLocation;->fillInNotifierBundle(Landroid/os/Bundle;)V

    :cond_11
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    return-void
.end method

.method public listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    .registers 28

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    if-eqz p3, :cond_2b6

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/TelephonyRegistry;->checkListenerPermission(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    monitor-enter v20

    const/4 v15, 0x0

    :try_start_19
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I
    :try_end_26
    .catchall {:try_start_19 .. :try_end_26} :catchall_1f6

    move-result v3

    const/4 v9, 0x0

    move-object/from16 v16, v15

    :goto_2a
    if-ge v9, v3, :cond_1ce

    :try_start_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/TelephonyRegistry$Record;
    :try_end_3a
    .catchall {:try_start_2c .. :try_end_3a} :catchall_316

    :try_start_3a
    iget-object v0, v15, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    if-ne v4, v0, :cond_1c8

    :goto_42
    iget v0, v15, Lcom/android/server/TelephonyRegistry$Record;->events:I

    move/from16 v19, v0

    xor-int v19, v19, p3

    and-int v18, p3, v19

    iget v14, v15, Lcom/android/server/TelephonyRegistry$Record;->events:I

    move/from16 v0, p3

    iput v0, v15, Lcom/android/server/TelephonyRegistry$Record;->events:I

    and-int/lit8 v19, p3, 0x20

    if-eqz v19, :cond_200

    const/4 v10, 0x0

    const/4 v7, 0x0

    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    sget-object v21, Lcom/android/server/TelephonyRegistry;->mCallStateListeners:Ljava/util/ArrayList;

    monitor-enter v21
    :try_end_5d
    .catchall {:try_start_3a .. :try_end_5d} :catchall_1f6

    :try_start_5d
    sget-object v19, Lcom/android/server/TelephonyRegistry;->mCallStateListeners:Ljava/util/ArrayList;

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v9, 0x0

    :goto_64
    if-ge v9, v12, :cond_322

    sget-object v19, Lcom/android/server/TelephonyRegistry;->mCallStateListeners:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Lcom/android/server/TelephonyRegistry$Record;

    move-object v10, v0

    iget-object v0, v10, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v19, v0
    :try_end_77
    .catchall {:try_start_5d .. :try_end_77} :catchall_1fd

    move-object/from16 v0, v19

    if-ne v4, v0, :cond_1f9

    const/4 v7, 0x1

    move-object v11, v10

    :goto_7d
    if-nez v7, :cond_31f

    :try_start_7f
    new-instance v10, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Lcom/android/server/TelephonyRegistry$Record;-><init>(Lcom/android/server/TelephonyRegistry$1;)V
    :try_end_88
    .catchall {:try_start_7f .. :try_end_88} :catchall_31b

    :try_start_88
    iput-object v4, v10, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v0, p2

    iput-object v0, v10, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v0, p1

    iput-object v0, v10, Lcom/android/server/TelephonyRegistry$Record;->pkgForDebug:Ljava/lang/String;

    const/16 v19, 0x20

    move/from16 v0, v19

    iput v0, v10, Lcom/android/server/TelephonyRegistry$Record;->events:I

    sget-object v19, Lcom/android/server/TelephonyRegistry;->mCallStateListeners:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_9f
    monitor-exit v21
    :try_end_a0
    .catchall {:try_start_88 .. :try_end_a0} :catchall_1fd

    :cond_a0
    :goto_a0
    if-eqz p4, :cond_1c6

    and-int/lit8 v19, p3, 0x1

    if-eqz v19, :cond_bc

    :try_start_a6
    iget-object v0, v15, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v19, v0

    new-instance v21, Landroid/telephony/ServiceState;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_bc
    .catchall {:try_start_a6 .. :try_end_bc} :catchall_1f6
    .catch Landroid/os/RemoteException; {:try_start_a6 .. :try_end_bc} :catch_211

    :cond_bc
    :goto_bc
    and-int/lit8 v19, p3, 0x2

    if-eqz v19, :cond_da

    :try_start_c0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v8

    iget-object v0, v15, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v19, v0

    const/16 v21, 0x63

    move/from16 v0, v21

    if-ne v8, v0, :cond_d5

    const/4 v8, -0x1

    :cond_d5
    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_da
    .catchall {:try_start_c0 .. :try_end_da} :catchall_1f6
    .catch Landroid/os/RemoteException; {:try_start_c0 .. :try_end_da} :catch_21f

    :cond_da
    :goto_da
    and-int/lit8 v19, p3, 0x4

    if-eqz v19, :cond_ef

    :try_start_de
    iget-object v0, v15, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:Z

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V
    :try_end_ef
    .catchall {:try_start_de .. :try_end_ef} :catchall_1f6
    .catch Landroid/os/RemoteException; {:try_start_de .. :try_end_ef} :catch_22d

    :cond_ef
    :goto_ef
    and-int/lit8 v19, p3, 0x8

    if-eqz v19, :cond_104

    :try_start_f3
    iget-object v0, v15, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:Z

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_104
    .catchall {:try_start_f3 .. :try_end_104} :catchall_1f6
    .catch Landroid/os/RemoteException; {:try_start_f3 .. :try_end_104} :catch_23b

    :cond_104
    :goto_104
    const/16 v19, 0x10

    :try_start_106
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v15, v1}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z
    :try_end_10d
    .catchall {:try_start_106 .. :try_end_10d} :catchall_1f6

    move-result v19

    if-eqz v19, :cond_126

    :try_start_110
    iget-object v0, v15, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v19, v0

    new-instance v21, Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V
    :try_end_126
    .catchall {:try_start_110 .. :try_end_126} :catchall_1f6
    .catch Landroid/os/RemoteException; {:try_start_110 .. :try_end_126} :catch_249

    :cond_126
    :goto_126
    and-int/lit8 v19, p3, 0x20

    if-eqz v19, :cond_141

    :try_start_12a
    iget-object v0, v15, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v19, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/TelephonyRegistry;->getCallStateForAllSims()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_141
    .catchall {:try_start_12a .. :try_end_141} :catchall_1f6
    .catch Landroid/os/RemoteException; {:try_start_12a .. :try_end_141} :catch_257

    :cond_141
    :goto_141
    and-int/lit8 v19, p3, 0x40

    if-eqz v19, :cond_15e

    :try_start_145
    iget-object v0, v15, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    move/from16 v22, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_15e
    .catchall {:try_start_145 .. :try_end_15e} :catchall_1f6
    .catch Landroid/os/RemoteException; {:try_start_145 .. :try_end_15e} :catch_270

    :cond_15e
    :goto_15e
    move/from16 v0, p3

    and-int/lit16 v0, v0, 0x80

    move/from16 v19, v0

    if-eqz v19, :cond_177

    :try_start_166
    iget-object v0, v15, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/TelephonyRegistry;->mDataActivity:I

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V
    :try_end_177
    .catchall {:try_start_166 .. :try_end_177} :catchall_1f6
    .catch Landroid/os/RemoteException; {:try_start_166 .. :try_end_177} :catch_27e

    :cond_177
    :goto_177
    move/from16 v0, p3

    and-int/lit16 v0, v0, 0x100

    move/from16 v19, v0

    if-eqz v19, :cond_190

    :try_start_17f
    iget-object v0, v15, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_190
    .catchall {:try_start_17f .. :try_end_190} :catchall_1f6
    .catch Landroid/os/RemoteException; {:try_start_17f .. :try_end_190} :catch_28c

    :cond_190
    :goto_190
    move/from16 v0, p3

    and-int/lit16 v0, v0, 0x200

    move/from16 v19, v0

    if-eqz v19, :cond_1a9

    :try_start_198
    iget-object v0, v15, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/TelephonyRegistry;->mOtaspMode:I

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onOtaspChanged(I)V
    :try_end_1a9
    .catchall {:try_start_198 .. :try_end_1a9} :catchall_1f6
    .catch Landroid/os/RemoteException; {:try_start_198 .. :try_end_1a9} :catch_29a

    :cond_1a9
    :goto_1a9
    const/16 v19, 0x400

    :try_start_1ab
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v15, v1}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z
    :try_end_1b2
    .catchall {:try_start_1ab .. :try_end_1b2} :catchall_1f6

    move-result v19

    if-eqz v19, :cond_1c6

    :try_start_1b5
    iget-object v0, v15, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V
    :try_end_1c6
    .catchall {:try_start_1b5 .. :try_end_1c6} :catchall_1f6
    .catch Landroid/os/RemoteException; {:try_start_1b5 .. :try_end_1c6} :catch_2a8

    :cond_1c6
    :goto_1c6
    :try_start_1c6
    monitor-exit v20
    :try_end_1c7
    .catchall {:try_start_1c6 .. :try_end_1c7} :catchall_1f6

    :goto_1c7
    return-void

    :cond_1c8
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v16, v15

    goto/16 :goto_2a

    :cond_1ce
    :try_start_1ce
    new-instance v15, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Lcom/android/server/TelephonyRegistry$Record;-><init>(Lcom/android/server/TelephonyRegistry$1;)V
    :try_end_1d7
    .catchall {:try_start_1ce .. :try_end_1d7} :catchall_316

    const/16 v19, 0x0

    :try_start_1d9
    move/from16 v0, v19

    iput v0, v15, Lcom/android/server/TelephonyRegistry$Record;->events:I

    iput-object v4, v15, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v0, p2

    iput-object v0, v15, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v0, p1

    iput-object v0, v15, Lcom/android/server/TelephonyRegistry$Record;->pkgForDebug:Ljava/lang/String;

    iput v5, v15, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_42

    :catchall_1f6
    move-exception v19

    :goto_1f7
    monitor-exit v20
    :try_end_1f8
    .catchall {:try_start_1d9 .. :try_end_1f8} :catchall_1f6

    throw v19

    :cond_1f9
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_64

    :catchall_1fd
    move-exception v19

    :goto_1fe
    :try_start_1fe
    monitor-exit v21
    :try_end_1ff
    .catchall {:try_start_1fe .. :try_end_1ff} :catchall_1fd

    :try_start_1ff
    throw v19

    :cond_200
    and-int/lit8 v19, v14, 0x20

    if-eqz v19, :cond_a0

    iget-object v0, v15, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/TelephonyRegistry;->removeCallStateListener(Landroid/os/IBinder;)V

    goto/16 :goto_a0

    :catch_211
    move-exception v6

    iget-object v0, v15, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_bc

    :catch_21f
    move-exception v6

    iget-object v0, v15, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_da

    :catch_22d
    move-exception v6

    iget-object v0, v15, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_ef

    :catch_23b
    move-exception v6

    iget-object v0, v15, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_104

    :catch_249
    move-exception v6

    iget-object v0, v15, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_126

    :catch_257
    move-exception v6

    iget-object v0, v15, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    iget-object v0, v15, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/TelephonyRegistry;->removeCallStateListener(Landroid/os/IBinder;)V

    goto/16 :goto_141

    :catch_270
    move-exception v6

    iget-object v0, v15, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_15e

    :catch_27e
    move-exception v6

    iget-object v0, v15, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_177

    :catch_28c
    move-exception v6

    iget-object v0, v15, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_190

    :catch_29a
    move-exception v6

    iget-object v0, v15, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_1a9

    :catch_2a8
    move-exception v6

    iget-object v0, v15, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_2b4
    .catchall {:try_start_1ff .. :try_end_2b4} :catchall_1f6

    goto/16 :goto_1c6

    :cond_2b6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    monitor-enter v20

    const/4 v15, 0x0

    :try_start_2be
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/4 v9, 0x0

    :goto_2cd
    move/from16 v0, v17

    if-ge v9, v0, :cond_302

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Lcom/android/server/TelephonyRegistry$Record;

    move-object v15, v0

    iget-object v0, v15, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    if-ne v4, v0, :cond_2ff

    iget v0, v15, Lcom/android/server/TelephonyRegistry$Record;->events:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x20

    if-eqz v19, :cond_2ff

    sget-object v19, Lcom/android/server/TelephonyRegistry;->mRemoveCallStateListenerList:Ljava/util/ArrayList;

    iget-object v0, v15, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2ff
    add-int/lit8 v9, v9, 0x1

    goto :goto_2cd

    :cond_302
    invoke-direct/range {p0 .. p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveCallStateListenerListLocked()V

    monitor-exit v20
    :try_end_306
    .catchall {:try_start_2be .. :try_end_306} :catchall_313

    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_1c7

    :catchall_313
    move-exception v19

    :try_start_314
    monitor-exit v20
    :try_end_315
    .catchall {:try_start_314 .. :try_end_315} :catchall_313

    throw v19

    :catchall_316
    move-exception v19

    move-object/from16 v15, v16

    goto/16 :goto_1f7

    :catchall_31b
    move-exception v19

    move-object v10, v11

    goto/16 :goto_1fe

    :cond_31f
    move-object v10, v11

    goto/16 :goto_9f

    :cond_322
    move-object v11, v10

    goto/16 :goto_7d
.end method

.method public notifyCallForwardingChanged(Z)V
    .registers 8

    const-string v3, "notifyCallForwardingChanged()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_c
    iput-boolean p1, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:Z

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_35

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_14

    :try_start_26
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_35
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2b} :catch_2c

    goto :goto_14

    :catch_2c
    move-exception v0

    :try_start_2d
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :catchall_35
    move-exception v3

    monitor-exit v4
    :try_end_37
    .catchall {:try_start_2d .. :try_end_37} :catchall_35

    throw v3

    :cond_38
    :try_start_38
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_35

    goto :goto_8
.end method

.method public notifyCallState(ILjava/lang/String;)V
    .registers 11

    const-string v4, "notifyCallState()"

    invoke-direct {p0, v4}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v5

    :try_start_c
    sget-object v6, Lcom/android/server/TelephonyRegistry;->mCallStateListeners:Ljava/util/ArrayList;

    monitor-enter v6
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_49

    :try_start_f
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mCallState:I

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:Ljava/lang/String;

    sget-object v4, Lcom/android/server/TelephonyRegistry;->mCallStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_19
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    iget v4, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_27
    .catchall {:try_start_f .. :try_end_27} :catchall_46

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_19

    move v3, p1

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4c

    const/4 v3, 0x1

    :cond_30
    :goto_30
    :try_start_30
    iget-object v4, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, v3, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_35
    .catchall {:try_start_30 .. :try_end_35} :catchall_46
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_35} :catch_36

    goto :goto_19

    :catch_36
    move-exception v0

    :try_start_37
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v7, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/server/TelephonyRegistry;->mRemoveCallStateListenerList:Ljava/util/ArrayList;

    iget-object v7, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :catchall_46
    move-exception v4

    monitor-exit v6
    :try_end_48
    .catchall {:try_start_37 .. :try_end_48} :catchall_46

    :try_start_48
    throw v4

    :catchall_49
    move-exception v4

    monitor-exit v5
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_49

    throw v4

    :cond_4c
    const/4 v4, 0x5

    if-ne v3, v4, :cond_51

    const/4 v3, 0x2

    goto :goto_30

    :cond_51
    const/4 v4, 0x3

    if-ne v3, v4, :cond_30

    const/4 v3, 0x0

    goto :goto_30

    :cond_56
    :try_start_56
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveCallStateListenerListLocked()V

    monitor-exit v6
    :try_end_5d
    .catchall {:try_start_56 .. :try_end_5d} :catchall_46

    :try_start_5d
    monitor-exit v5
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_49

    invoke-direct {p0, p1, p2}, Lcom/android/server/TelephonyRegistry;->broadcastCallStateChanged(ILjava/lang/String;)V

    goto :goto_8
.end method

.method public notifyCallStateDuos(ILjava/lang/String;I)V
    .registers 11

    const-string v4, "notifyCallState()"

    invoke-direct {p0, v4}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v5

    :try_start_c
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mCallState:I

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    iget v4, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_3c

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_16

    move v3, p1

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3f

    const/4 v3, 0x1

    :cond_2d
    :goto_2d
    :try_start_2d
    iget-object v4, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, v3, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_3c
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_32} :catch_33

    goto :goto_16

    :catch_33
    move-exception v0

    :try_start_34
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :catchall_3c
    move-exception v4

    monitor-exit v5
    :try_end_3e
    .catchall {:try_start_34 .. :try_end_3e} :catchall_3c

    throw v4

    :cond_3f
    const/4 v4, 0x5

    if-ne v3, v4, :cond_44

    const/4 v3, 0x2

    goto :goto_2d

    :cond_44
    const/4 v4, 0x3

    if-ne v3, v4, :cond_2d

    const/4 v3, 0x0

    goto :goto_2d

    :cond_49
    :try_start_49
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    monitor-exit v5
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_3c

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/TelephonyRegistry;->broadcastCallStateChanged(ILjava/lang/String;I)V

    goto :goto_8
.end method

.method public notifyCellInfo(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    const-string v3, "notifyCellInfo()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_c
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v3, 0x400

    invoke-direct {p0, v2, v3}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_37

    move-result v3

    if-eqz v3, :cond_14

    :try_start_28
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V
    :try_end_2d
    .catchall {:try_start_28 .. :try_end_2d} :catchall_37
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2d} :catch_2e

    goto :goto_14

    :catch_2e
    move-exception v0

    :try_start_2f
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :catchall_37
    move-exception v3

    monitor-exit v4
    :try_end_39
    .catchall {:try_start_2f .. :try_end_39} :catchall_37

    throw v3

    :cond_3a
    :try_start_3a
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    monitor-exit v4
    :try_end_3e
    .catchall {:try_start_3a .. :try_end_3e} :catchall_37

    goto :goto_8
.end method

.method public notifyCellLocation(Landroid/os/Bundle;)V
    .registers 8

    const-string v3, "notifyCellLocation()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_c
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    const/16 v3, 0x10

    invoke-direct {p0, v2, v3}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_3c

    move-result v3

    if-eqz v3, :cond_14

    :try_start_28
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V
    :try_end_32
    .catchall {:try_start_28 .. :try_end_32} :catchall_3c
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_32} :catch_33

    goto :goto_14

    :catch_33
    move-exception v0

    :try_start_34
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :catchall_3c
    move-exception v3

    monitor-exit v4
    :try_end_3e
    .catchall {:try_start_34 .. :try_end_3e} :catchall_3c

    throw v3

    :cond_3f
    :try_start_3f
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    monitor-exit v4
    :try_end_43
    .catchall {:try_start_3f .. :try_end_43} :catchall_3c

    goto :goto_8
.end method

.method public notifyDataActivity(I)V
    .registers 8

    const-string v3, "notifyDataActivity()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_c
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:I

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_35

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_14

    :try_start_26
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_35
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2b} :catch_2c

    goto :goto_14

    :catch_2c
    move-exception v0

    :try_start_2d
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :catchall_35
    move-exception v3

    monitor-exit v4
    :try_end_37
    .catchall {:try_start_2d .. :try_end_37} :catchall_35

    throw v3

    :cond_38
    :try_start_38
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_35

    goto :goto_8
.end method

.method public notifyDataConnection(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;IZ)V
    .registers 24

    const-string v1, "notifyDataConnection()"

    invoke-direct {p0, v1}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    :goto_8
    return-void

    :cond_9
    const-string v1, "TelephonyRegistry"

    const-string v2, "notifyDataConnection: CW linkProperties in null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v2

    const/4 v12, 0x0

    :try_start_14
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mApnBlackList:Ljava/util/ArrayList;

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mApnBlackList:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    :cond_22
    const/4 v1, 0x2

    if-ne p1, v1, :cond_88

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    if-eq v1, p1, :cond_3d

    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    const/4 v12, 0x1

    :cond_3d
    :goto_3d
    move/from16 v0, p2

    iput-boolean v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:Z

    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:Ljava/lang/String;

    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkProperties:Landroid/net/LinkProperties;

    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkCapabilities:Landroid/net/LinkCapabilities;

    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    move/from16 v0, p8

    if-eq v1, v0, :cond_58

    move/from16 v0, p8

    iput v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    const/4 v12, 0x1

    :cond_58
    if-eqz v12, :cond_a1

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_60
    :goto_60
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/TelephonyRegistry$Record;

    iget v1, v13, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_6e
    .catchall {:try_start_14 .. :try_end_6e} :catchall_85

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_60

    :try_start_72
    iget-object v1, v13, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    iget v4, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    invoke-interface {v1, v3, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_7b
    .catchall {:try_start_72 .. :try_end_7b} :catchall_85
    .catch Landroid/os/RemoteException; {:try_start_72 .. :try_end_7b} :catch_7c

    goto :goto_60

    :catch_7c
    move-exception v10

    :try_start_7d
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v3, v13, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_60

    :catchall_85
    move-exception v1

    monitor-exit v2
    :try_end_87
    .catchall {:try_start_7d .. :try_end_87} :catchall_85

    throw v1

    :cond_88
    :try_start_88
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3d

    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    const/4 v12, 0x1

    goto :goto_3d

    :cond_9e
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    :cond_a1
    monitor-exit v2
    :try_end_a2
    .catchall {:try_start_88 .. :try_end_a2} :catchall_85

    move-object v1, p0

    move v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p9

    invoke-direct/range {v1 .. v9}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;Z)V

    goto/16 :goto_8
.end method

.method public notifyDataConnectionDuos(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;IZI)V
    .registers 26

    const-string v1, "notifyDataConnection()"

    invoke-direct {p0, v1}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v2

    const/4 v13, 0x0

    const/4 v1, 0x2

    move/from16 v0, p1

    if-ne v0, v1, :cond_79

    :try_start_12
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    move/from16 v0, p1

    if-eq v1, v0, :cond_2e

    move/from16 v0, p1

    iput v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    const/4 v13, 0x1

    :cond_2e
    :goto_2e
    move/from16 v0, p2

    iput-boolean v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:Z

    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:Ljava/lang/String;

    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkProperties:Landroid/net/LinkProperties;

    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkCapabilities:Landroid/net/LinkCapabilities;

    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    move/from16 v0, p8

    if-eq v1, v0, :cond_49

    move/from16 v0, p8

    iput v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    const/4 v13, 0x1

    :cond_49
    if-eqz v13, :cond_94

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_51
    :goto_51
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_91

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/TelephonyRegistry$Record;

    iget v1, v14, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_5f
    .catchall {:try_start_12 .. :try_end_5f} :catchall_76

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_51

    :try_start_63
    iget-object v1, v14, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    iget v4, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:I

    invoke-interface {v1, v3, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_6c
    .catchall {:try_start_63 .. :try_end_6c} :catchall_76
    .catch Landroid/os/RemoteException; {:try_start_63 .. :try_end_6c} :catch_6d

    goto :goto_51

    :catch_6d
    move-exception v11

    :try_start_6e
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v3, v14, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_51

    :catchall_76
    move-exception v1

    monitor-exit v2
    :try_end_78
    .catchall {:try_start_6e .. :try_end_78} :catchall_76

    throw v1

    :cond_79
    :try_start_79
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2e

    move/from16 v0, p1

    iput v0, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:I

    const/4 v13, 0x1

    goto :goto_2e

    :cond_91
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    :cond_94
    monitor-exit v2
    :try_end_95
    .catchall {:try_start_79 .. :try_end_95} :catchall_76

    move-object v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v1 .. v10}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;ZI)V

    goto/16 :goto_8
.end method

.method public notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "notifyDataConnectionFailed()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method

.method public notifyDataConnectionFailedDuos(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    const-string v0, "notifyDataConnectionFailed()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_8
.end method

.method public notifyDualSimSlotActivationState(Z)V
    .registers 7

    const-string v3, "notifyDualSimSlotActivationState()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_c
    iput-boolean p1, p0, Lcom/android/server/TelephonyRegistry;->mDualSimSlotActivationState:Z

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_16
    if-ltz v1, :cond_38

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_35

    and-int/lit16 v3, v3, 0x300

    if-eqz v3, :cond_2b

    :try_start_26
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onDualSimSlotActivationState(Z)V
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_35
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2b} :catch_2e

    :cond_2b
    :goto_2b
    add-int/lit8 v1, v1, -0x1

    goto :goto_16

    :catch_2e
    move-exception v0

    :try_start_2f
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_2b

    :catchall_35
    move-exception v3

    monitor-exit v4
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_35

    throw v3

    :cond_38
    :try_start_38
    monitor-exit v4
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_35

    goto :goto_8
.end method

.method public notifyDunDataActivity(I)V
    .registers 7

    const-string v3, "notifyDunDataActivity()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_c
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mDunDataActivity:I

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_16
    if-ltz v1, :cond_38

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_35

    and-int/lit16 v3, v3, 0x180

    if-eqz v3, :cond_2b

    :try_start_26
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onDunDataActivity(I)V
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_35
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2b} :catch_2e

    :cond_2b
    :goto_2b
    add-int/lit8 v1, v1, -0x1

    goto :goto_16

    :catch_2e
    move-exception v0

    :try_start_2f
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_2b

    :catchall_35
    move-exception v3

    monitor-exit v4
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_35

    throw v3

    :cond_38
    :try_start_38
    monitor-exit v4
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_35

    goto :goto_8
.end method

.method public notifyDunDataConnection(II)V
    .registers 8

    const-string v3, "notifyDunDataConnection()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_c
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mDunDataConnectionState:I

    iput p2, p0, Lcom/android/server/TelephonyRegistry;->mDunNetWorkType:I

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_18
    if-ltz v1, :cond_3a

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_37

    and-int/lit16 v3, v3, 0x140

    if-eqz v3, :cond_2d

    :try_start_28
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onDunDataConnectionStateChanged(II)V
    :try_end_2d
    .catchall {:try_start_28 .. :try_end_2d} :catchall_37
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2d} :catch_30

    :cond_2d
    :goto_2d
    add-int/lit8 v1, v1, -0x1

    goto :goto_18

    :catch_30
    move-exception v0

    :try_start_31
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_2d

    :catchall_37
    move-exception v3

    monitor-exit v4
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_37

    throw v3

    :cond_3a
    :try_start_3a
    monitor-exit v4
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_37

    goto :goto_8
.end method

.method public notifyMessageWaitingChanged(Z)V
    .registers 8

    const-string v3, "notifyMessageWaitingChanged()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_c
    iput-boolean p1, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:Z

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_35

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_14

    :try_start_26
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_35
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2b} :catch_2c

    goto :goto_14

    :catch_2c
    move-exception v0

    :try_start_2d
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :catchall_35
    move-exception v3

    monitor-exit v4
    :try_end_37
    .catchall {:try_start_2d .. :try_end_37} :catchall_35

    throw v3

    :cond_38
    :try_start_38
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_35

    goto :goto_8
.end method

.method public notifyOtaspChanged(I)V
    .registers 8

    const-string v3, "notifyOtaspChanged()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_c
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mOtaspMode:I

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_35

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_14

    :try_start_26
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onOtaspChanged(I)V
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_35
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2b} :catch_2c

    goto :goto_14

    :catch_2c
    move-exception v0

    :try_start_2d
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :catchall_35
    move-exception v3

    monitor-exit v4
    :try_end_37
    .catchall {:try_start_2d .. :try_end_37} :catchall_35

    throw v3

    :cond_38
    :try_start_38
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_35

    goto :goto_8
.end method

.method public notifyServiceState(Landroid/telephony/ServiceState;)V
    .registers 8

    const-string v3, "notifyServiceState()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_c
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:Landroid/telephony/ServiceState;

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_3a

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_14

    :try_start_26
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v5, Landroid/telephony/ServiceState;

    invoke-direct {v5, p1}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_3a
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_30} :catch_31

    goto :goto_14

    :catch_31
    move-exception v0

    :try_start_32
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :catchall_3a
    move-exception v3

    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_32 .. :try_end_3c} :catchall_3a

    throw v3

    :cond_3d
    :try_start_3d
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    monitor-exit v4
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_3a

    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->broadcastServiceStateChanged(Landroid/telephony/ServiceState;)V

    goto :goto_8
.end method

.method public notifyServiceStateDuos(Landroid/telephony/ServiceState;I)V
    .registers 9

    const-string v3, "notifyServiceState()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_c
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:Landroid/telephony/ServiceState;

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_3a

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_14

    :try_start_26
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v5, Landroid/telephony/ServiceState;

    invoke-direct {v5, p1}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_3a
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_30} :catch_31

    goto :goto_14

    :catch_31
    move-exception v0

    :try_start_32
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :catchall_3a
    move-exception v3

    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_32 .. :try_end_3c} :catchall_3a

    throw v3

    :cond_3d
    :try_start_3d
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    monitor-exit v4
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_3a

    invoke-direct {p0, p1, p2}, Lcom/android/server/TelephonyRegistry;->broadcastServiceStateChanged(Landroid/telephony/ServiceState;I)V

    goto :goto_8
.end method

.method public notifySignalStrength(Landroid/telephony/SignalStrength;)V
    .registers 9

    const-string v4, "notifySignalStrength()"

    invoke-direct {p0, v4}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v5

    :try_start_c
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_4e

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_30

    :try_start_26
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v6, Landroid/telephony/SignalStrength;

    invoke-direct {v6, p1}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    invoke-interface {v4, v6}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_4e
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_30} :catch_51

    :cond_30
    :goto_30
    :try_start_30
    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_32
    .catchall {:try_start_30 .. :try_end_32} :catchall_4e

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_14

    :try_start_36
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/16 v6, 0x63

    if-ne v1, v6, :cond_41

    const/4 v1, -0x1

    :cond_41
    invoke-interface {v4, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_44
    .catchall {:try_start_36 .. :try_end_44} :catchall_4e
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_44} :catch_45

    goto :goto_14

    :catch_45
    move-exception v0

    :try_start_46
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :catchall_4e
    move-exception v4

    monitor-exit v5
    :try_end_50
    .catchall {:try_start_46 .. :try_end_50} :catchall_4e

    throw v4

    :catch_51
    move-exception v0

    :try_start_52
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_30

    :cond_5a
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    monitor-exit v5
    :try_end_5e
    .catchall {:try_start_52 .. :try_end_5e} :catchall_4e

    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;)V

    goto :goto_8
.end method

.method public notifySignalStrengthDuos(Landroid/telephony/SignalStrength;I)V
    .registers 10

    const-string v4, "notifySignalStrength()"

    invoke-direct {p0, v4}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v5

    :try_start_c
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:Landroid/telephony/SignalStrength;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_4e

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_30

    :try_start_26
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v6, Landroid/telephony/SignalStrength;

    invoke-direct {v6, p1}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    invoke-interface {v4, v6}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_4e
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_30} :catch_51

    :cond_30
    :goto_30
    :try_start_30
    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->events:I
    :try_end_32
    .catchall {:try_start_30 .. :try_end_32} :catchall_4e

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_14

    :try_start_36
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/16 v6, 0x63

    if-ne v1, v6, :cond_41

    const/4 v1, -0x1

    :cond_41
    invoke-interface {v4, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_44
    .catchall {:try_start_36 .. :try_end_44} :catchall_4e
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_44} :catch_45

    goto :goto_14

    :catch_45
    move-exception v0

    :try_start_46
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :catchall_4e
    move-exception v4

    monitor-exit v5
    :try_end_50
    .catchall {:try_start_46 .. :try_end_50} :catchall_4e

    throw v4

    :catch_51
    move-exception v0

    :try_start_52
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_30

    :cond_5a
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    monitor-exit v5
    :try_end_5e
    .catchall {:try_start_52 .. :try_end_5e} :catchall_4e

    invoke-direct {p0, p1, p2}, Lcom/android/server/TelephonyRegistry;->broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;I)V

    goto :goto_8
.end method

.method public systemReady()V
    .registers 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
