.class Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;
.super Landroid/os/Handler;
.source "EnterpriseVpnPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnterpriseVpnHandler"
.end annotation


# static fields
.field private static final ACTION_IPTABLE_EXECUTE:I = 0x5

.field private static final ACTION_NOTIFY_APP_LAUNCH:I = 0x7

.field private static final ACTION_PACKAGE_ADDED:I = 0x2

.field private static final ACTION_PACKAGE_REMOVED:I = 0x3

.field private static final ACTION_RETRY_VPN_CONNECTION:I = 0x6

.field private static final ACTION_VPN_INITIALIZE_BIND:I = 0x8

.field private static final CONNECTIVITY_ACTION:I = 0x4

.field private static final ENTERPRISE_STATUS_CALLBACK:I = 0x1

.field private static final GET_STATUS_IDLE:I = 0x1

.field private static final VPN_CONNECT_FAILURE:I = 0x5

.field private static final VPN_CONNECT_READY:I = 0x1

.field private static final VPN_CONNECT_SUCCESS:I = 0x4

.field private static final VPN_PROFILE_CONNECTING:I = 0x2

.field private static final VPN_PROFILE_DELETE:I = 0x6


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 54

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    const-string v46, "vpn handle : Message received"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/os/Bundle;

    const/16 v40, -0x1

    const/16 v44, 0x0

    const/16 v29, 0x0

    const/16 v32, 0x0

    const/16 v16, 0x0

    const/16 v39, -0x1

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    packed-switch v45, :pswitch_data_d24

    :cond_27
    :goto_27
    return-void

    :pswitch_28
    const-string v45, "status"

    move-object/from16 v0, v27

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v39

    const-string v45, "profileName"

    move-object/from16 v0, v27

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    const-string v45, "errorString"

    move-object/from16 v0, v27

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_4a

    const-string v16, "Empty"

    :cond_4a
    const-string v45, "state"

    move-object/from16 v0, v27

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v38

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "vpn handle : callback to status : profile : "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, ",  state : "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, ", status : "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "vpn handle : callback to status : Error "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileNameVpnMap:Ljava/util/HashMap;
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/HashMap;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;

    if-eqz v43, :cond_485

    invoke-virtual/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->getVpnStateList()Ljava/util/ArrayList;

    move-result-object v24

    if-eqz v24, :cond_27

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v5

    array-length v0, v5

    move/from16 v23, v0

    if-nez v38, :cond_39f

    packed-switch v39, :pswitch_data_d38

    :pswitch_d6
    goto/16 :goto_27

    :pswitch_d8
    const/16 v17, 0x0

    :goto_da
    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_29c

    aget-object v44, v5, v17

    check-cast v44, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getState()I

    move-result v45

    const/16 v46, 0x1

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_131

    const/16 v45, 0x0

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setState(I)V

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getUid()I

    move-result v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move/from16 v1, v40

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->addIPtableBLock(I)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3100(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getInterface()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v45

    move/from16 v1, v40

    move-object/from16 v2, v46

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->removeIPtableRoute(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getUid()I

    move-result v46

    move-object/from16 v0, v45

    move-object/from16 v1, v32

    move/from16 v2, v46

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->unsetDnsSystemProperty(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3300(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;I)V

    const/16 v45, 0x0

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setInterface(Ljava/lang/String;)V

    :cond_131
    add-int/lit8 v17, v17, 0x1

    goto :goto_da

    :pswitch_134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getRunningPackages()Ljava/util/List;
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2300(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/List;

    move-result-object v37

    const/16 v17, 0x0

    :goto_140
    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_1bc

    aget-object v44, v5, v17

    check-cast v44, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getCid()I

    move-result v45

    if-lez v45, :cond_16c

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getCid()I

    move-result v45

    if-lez v45, :cond_1b9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getPackageName()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    move-object/from16 v2, v37

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->isPackageRunning(Ljava/lang/String;Ljava/util/List;)Z
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2400(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;Ljava/util/List;)Z

    move-result v45

    if-eqz v45, :cond_1b9

    :cond_16c
    invoke-virtual/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getState()I

    move-result v45

    const/16 v46, 0x1

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_1b9

    const/16 v45, 0x1

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setState(I)V

    move-object/from16 v0, v44

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setInterface(Ljava/lang/String;)V

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getUid()I

    move-result v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getInterface()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v45

    move/from16 v1, v40

    move-object/from16 v2, v46

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->addIPtableRoute(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2500(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move/from16 v1, v40

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->removeIPtableBLock(I)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2600(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v32

    move/from16 v2, v40

    move-object/from16 v3, v16

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->setDnsSystemProperty(Ljava/lang/String;ILjava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2700(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;ILjava/lang/String;)V

    :cond_1b9
    add-int/lit8 v17, v17, 0x1

    goto :goto_140

    :cond_1bc
    move-object/from16 v0, v43

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->setInterfaceName(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v45

    if-lez v45, :cond_203

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->createNotification()V
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2900(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    goto/16 :goto_27

    :cond_203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->cancelNotification()V
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    goto/16 :goto_27

    :pswitch_20e
    const/16 v17, 0x0

    :goto_210
    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_264

    aget-object v44, v5, v17

    check-cast v44, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getState()I

    move-result v45

    const/16 v46, 0x1

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_25c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getUid()I

    move-result v46

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->addIPtableBLock(I)V
    invoke-static/range {v45 .. v46}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3100(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getUid()I

    move-result v46

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getInterface()Ljava/lang/String;

    move-result-object v47

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->removeIPtableRoute(ILjava/lang/String;)V
    invoke-static/range {v45 .. v47}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getUid()I

    move-result v46

    move-object/from16 v0, v45

    move-object/from16 v1, v32

    move/from16 v2, v46

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->unsetDnsSystemProperty(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3300(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;I)V

    const/16 v45, 0x0

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setState(I)V

    :cond_25c
    const/16 v45, 0x0

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setInterface(Ljava/lang/String;)V

    add-int/lit8 v17, v17, 0x1

    goto :goto_210

    :cond_264
    const/16 v45, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->setInterfaceName(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v32

    move-object/from16 v2, v16

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->createNotification(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3400(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$900()Z

    move-result v45

    if-eqz v45, :cond_28b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->printPackageVpnMap()V
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3500(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    :cond_28b
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$900()Z

    move-result v45

    if-eqz v45, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->printProfileVpnMap()V
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3600(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    goto/16 :goto_27

    :cond_29c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v32

    move-object/from16 v2, v16

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->createNotification(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3400(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v45, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->setInterfaceName(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$900()Z

    move-result v45

    if-eqz v45, :cond_2c3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->printPackageVpnMap()V
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3500(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    :cond_2c3
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$900()Z

    move-result v45

    if-eqz v45, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->printProfileVpnMap()V
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3600(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    goto/16 :goto_27

    :pswitch_2d4
    const/16 v33, 0x0

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    const-string v46, "vpn handle : Handling VPN CONNECTING state on Network Change"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x0

    :goto_2e1
    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_337

    aget-object v44, v5, v17

    check-cast v44, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getState()I

    move-result v45

    const/16 v46, 0x1

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_32f

    const/16 v33, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getUid()I

    move-result v46

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->addIPtableBLock(I)V
    invoke-static/range {v45 .. v46}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3100(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getUid()I

    move-result v46

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getInterface()Ljava/lang/String;

    move-result-object v47

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->removeIPtableRoute(ILjava/lang/String;)V
    invoke-static/range {v45 .. v47}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getUid()I

    move-result v46

    move-object/from16 v0, v45

    move-object/from16 v1, v32

    move/from16 v2, v46

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->unsetDnsSystemProperty(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3300(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;I)V

    const/16 v45, 0x0

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setState(I)V

    :cond_32f
    const/16 v45, 0x0

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setInterface(Ljava/lang/String;)V

    add-int/lit8 v17, v17, 0x1

    goto :goto_2e1

    :cond_337
    if-eqz v33, :cond_351

    const/16 v45, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->setInterfaceName(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v32

    move-object/from16 v2, v16

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->createNotification(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3400(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;Ljava/lang/String;)V

    :cond_351
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$900()Z

    move-result v45

    if-eqz v45, :cond_360

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->printPackageVpnMap()V
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3500(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    :cond_360
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$900()Z

    move-result v45

    if-eqz v45, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->printProfileVpnMap()V
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3600(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    goto/16 :goto_27

    :pswitch_371
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "vpn handle : The Start Connection callback for remove vpn connection method is recieved and its state is  "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, "Status is "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27

    :cond_39f
    sparse-switch v39, :sswitch_data_d48

    goto/16 :goto_27

    :goto_3a4
    :sswitch_3a4
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    const-string v46, "vpn handle : ready status : VPN disconnect successfully"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x0

    :goto_3af
    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_429

    aget-object v44, v5, v17

    check-cast v44, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getState()I

    move-result v45

    const/16 v46, 0x1

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_406

    const/16 v45, 0x0

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setState(I)V

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getUid()I

    move-result v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move/from16 v1, v40

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->addIPtableBLock(I)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3100(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getInterface()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v45

    move/from16 v1, v40

    move-object/from16 v2, v46

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->removeIPtableRoute(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getUid()I

    move-result v46

    move-object/from16 v0, v45

    move-object/from16 v1, v32

    move/from16 v2, v46

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->unsetDnsSystemProperty(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3300(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;I)V

    const/16 v45, 0x0

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setInterface(Ljava/lang/String;)V

    :cond_406
    add-int/lit8 v17, v17, 0x1

    goto :goto_3af

    :sswitch_409
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "vpn handle : fail status : VPN disconnect failure"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3a4

    :cond_429
    const/16 v45, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->setInterfaceName(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_470

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v45

    if-lez v45, :cond_47b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->createNotification()V
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2900(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    :cond_470
    :goto_470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->runAllVpnService()V
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    goto/16 :goto_27

    :cond_47b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->cancelNotification()V
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    goto :goto_470

    :cond_485
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    const-string v46, "vpn handle : ProfileNameVpnEntry returned null in handleMessage"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27

    :pswitch_490
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    const-string v46, "vpn handle : Handle MSG package add"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v45, "uid"

    move-object/from16 v0, v27

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v40

    const-string v45, "package"

    move-object/from16 v0, v27

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v45, "new_install_or_update"

    move-object/from16 v0, v27

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$900()Z

    move-result v45

    if-eqz v45, :cond_4d9

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "vpn handle : The install type value during package added is "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d9
    if-eqz v29, :cond_27

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$900()Z

    move-result v45

    if-eqz v45, :cond_50d

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "vpn handle : vpn handle : package add : PackageName and UID : "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_50d
    const-string v45, "com.mocana.vpn.android"

    move-object/from16 v0, v29

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_52b

    if-nez v6, :cond_520

    const/16 v45, 0x1

    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$502(Z)Z

    :cond_520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->bindMocanaVpnInterface()V
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1400(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    goto/16 :goto_27

    :cond_52b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v29

    move/from16 v2, v40

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->updatePackageData(Ljava/lang/String;I)Z
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3700(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;I)Z

    move-result v45

    if-eqz v45, :cond_27

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    const-string v46, "vpn handle : package add : Package found in DB with rule proceed with logic"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move/from16 v1, v40

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->addIPtableBLock(I)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3100(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v29

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getVpnObjectFromDB(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;

    move-result-object v42

    if-eqz v42, :cond_27

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getProfileName()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getCid()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v42

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->addToHashMap(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3900(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->isNetworkConnected()Z
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1100(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Z

    move-result v45

    if-eqz v45, :cond_72b

    if-lez v11, :cond_598

    if-lez v11, :cond_72b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v29

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->isPackageRunning(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$4000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_72b

    :cond_598
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    const-string v46, "vpn handle : pakcage add : Network is connected"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_5a1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    move-result-object v45

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-object/from16 v45, v0

    if-eqz v45, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    const-string v46, "key_vpn"

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getState(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v36

    const/16 v41, 0x0

    invoke-virtual/range {v36 .. v36}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v45

    if-nez v45, :cond_5d3

    invoke-virtual/range {v36 .. v36}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/String;

    :cond_5d3
    if-eqz v41, :cond_27

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$900()Z

    move-result v45

    if-eqz v45, :cond_5f9

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "vpn handle : package add : Callback state: "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5f9
    const-string v45, "CONNECTED"

    move-object/from16 v0, v41

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_690

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileNameVpnMap:Ljava/util/HashMap;
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/HashMap;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;

    if-eqz v43, :cond_685

    invoke-virtual/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->getInterfaceName()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move/from16 v1, v40

    move-object/from16 v2, v20

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->addIPtableRoute(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2500(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move/from16 v1, v40

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->removeIPtableBLock(I)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2600(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V

    move-object/from16 v0, v42

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setInterface(Ljava/lang/String;)V

    const/16 v45, 0x1

    move-object/from16 v0, v42

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setState(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getProfileName()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    move/from16 v2, v40

    move-object/from16 v3, v20

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->setDnsSystemProperty(Ljava/lang/String;ILjava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2700(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_662
    .catch Landroid/os/RemoteException; {:try_start_5a1 .. :try_end_662} :catch_664

    goto/16 :goto_27

    :catch_664
    move-exception v14

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "vpn handle : pakcage add : Exception at mocana:"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-static {v14}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27

    :cond_685
    :try_start_685
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    const-string v46, "vpn handle : Profilename not found in the map"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27

    :cond_690
    const-string v45, "CONNECTING"

    move-object/from16 v0, v41

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-nez v45, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    move-result-object v45

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-object/from16 v45, v0

    new-instance v46, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnCallback;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    invoke-direct/range {v46 .. v48}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnCallback;-><init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v47, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->findUid()I
    invoke-static/range {v47 .. v47}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$4100(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)I

    move-result v47

    move-object/from16 v0, v45

    move-object/from16 v1, v32

    move-object/from16 v2, v46

    move/from16 v3, v47

    invoke-interface {v0, v1, v2, v3}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->startConnection(Ljava/lang/String;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;I)Z

    move-result v45

    if-nez v45, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    const-string v46, "key_vpn"

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getErrorString(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v36

    const/16 v41, 0x0

    invoke-virtual/range {v36 .. v36}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v45

    if-nez v45, :cond_711

    invoke-virtual/range {v36 .. v36}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/String;

    if-eqz v41, :cond_711

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "vpn handle : package add : Cannot start vpn, mocana returned error:"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v32

    move-object/from16 v2, v41

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->createNotification(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3400(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    const-string v46, "vpn handle : package add : Cannot start vpn, mocana returned error"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_729
    .catch Landroid/os/RemoteException; {:try_start_685 .. :try_end_729} :catch_664

    goto/16 :goto_27

    :cond_72b
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    const-string v46, "vpn handle : package add : Network is not connected"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27

    :pswitch_736
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    const-string v46, "vpn handle : Handle MSG package remove"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v45, "package"

    move-object/from16 v0, v27

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v45, "com.mocana.vpn.android"

    move-object/from16 v0, v29

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_76b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->cancelNotification()V
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_76b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->packageNameVpnMap:Ljava/util/HashMap;
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$4200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/HashMap;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;

    if-eqz v44, :cond_27

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getProfileName()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v29

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->deleteUIDFromPackageData(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$4300(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_27

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    const-string v46, "vpn handle : package remove>> Remove from iptable/hashmap"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v29

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->removeFromHashMapByPackageName(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$4400(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;)V

    goto/16 :goto_27

    :pswitch_7ad
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    const-string v46, "vpn handle : connectivity action : Handle MSG CONNECTIVITY_ACTION"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v45, "status"

    move-object/from16 v0, v27

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v28

    const/16 v45, 0x1

    move/from16 v0, v28

    move/from16 v1, v45

    if-ne v0, v1, :cond_7e9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->cancelNotification()V
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->runAllVpnService()V
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    goto/16 :goto_27

    :cond_7e9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->cancelNotification()V
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    goto/16 :goto_27

    :pswitch_801
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    const-string v46, "vpn handle : iptable execute : Handle MSG ACTION_IPTABLE_EXECUTE"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v45, "command"

    move-object/from16 v0, v27

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_27

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const-string v45, " "

    move-object/from16 v0, v45

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    array-length v0, v4

    move/from16 v22, v0

    const/16 v18, 0x0

    :goto_829
    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_837

    aget-object v8, v4, v18

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v18, v18, 0x1

    goto :goto_829

    :cond_837
    :try_start_837
    new-instance v45, Ljava/lang/ProcessBuilder;

    const/16 v46, 0x0

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-direct/range {v45 .. v46}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    move-object/from16 v0, v45

    invoke-virtual {v0, v10}, Ljava/lang/ProcessBuilder;->command(Ljava/util/List;)Ljava/lang/ProcessBuilder;

    move-result-object v45

    const/16 v46, 0x1

    invoke-virtual/range {v45 .. v46}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Process;->waitFor()I
    :try_end_857
    .catch Ljava/io/IOException; {:try_start_837 .. :try_end_857} :catch_859
    .catch Ljava/lang/InterruptedException; {:try_start_837 .. :try_end_857} :catch_865

    goto/16 :goto_27

    :catch_859
    move-exception v14

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    const-string v46, "vpn handle : iptable execute : IOException iptables command failed "

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27

    :catch_865
    move-exception v14

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    const-string v46, "vpn handle : iptable execute : InterruptedException iptables command failed "

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27

    :pswitch_871
    const-string v45, "uid"

    move-object/from16 v0, v27

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->isNetworkConnected()Z
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1100(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Z

    move-result v45

    if-eqz v45, :cond_27

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    const-string v46, "vpn handle : notify app launch : network on"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_890
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1500(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v45

    const-string v46, "EnterpriseVpn"

    const/16 v47, 0x1

    move/from16 v0, v47

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    const-string v49, "UID_APP"

    aput-object v49, v47, v48

    const/16 v48, 0x1

    move/from16 v0, v48

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v50

    aput-object v50, v48, v49

    const/16 v49, 0x2

    move/from16 v0, v49

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    const-string v51, "profileName"

    aput-object v51, v49, v50

    const/16 v50, 0x1

    const-string v51, "applicationInfo"

    aput-object v51, v49, v50

    invoke-virtual/range {v45 .. v49}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    if-eqz v13, :cond_27

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v45

    if-lez v45, :cond_27

    const/16 v45, 0x0

    move/from16 v0, v45

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/ContentValues;

    const-string v45, "profileName"

    move-object/from16 v0, v45

    invoke-virtual {v12, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    const-string v45, "applicationInfo"

    move-object/from16 v0, v45

    invoke-virtual {v12, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$900()Z

    move-result v45

    if-eqz v45, :cond_940

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "vpn handle : notify app launch : packageName : "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " profileName :"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, "interface: "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v47, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;
    invoke-static/range {v47 .. v47}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    move-result-object v47

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-object/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    move-result-object v45

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-object/from16 v45, v0

    if-eqz v45, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    const-string v46, "key_vpn"

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getState(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v35

    const/16 v41, 0x0

    invoke-virtual/range {v35 .. v35}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v45

    if-nez v45, :cond_972

    invoke-virtual/range {v35 .. v35}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/String;

    :cond_972
    if-eqz v41, :cond_27

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    const-string v46, "vpn handle : notify app launch : Value is not null and going inside start connection"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileNameVpnMap:Ljava/util/HashMap;
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/HashMap;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$900()Z

    move-result v45

    if-eqz v45, :cond_9b5

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "vpn handle : notify app launch : Callback state: "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9b5
    const-string v45, "IDLE"

    move-object/from16 v0, v41

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-nez v45, :cond_9cd

    const-string v45, "FAILED"

    move-object/from16 v0, v41

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_a83

    :cond_9cd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    move-result-object v45

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-object/from16 v45, v0

    new-instance v46, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnCallback;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    invoke-direct/range {v46 .. v48}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnCallback;-><init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v47, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->findUid()I
    invoke-static/range {v47 .. v47}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$4100(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)I

    move-result v47

    move-object/from16 v0, v45

    move-object/from16 v1, v32

    move-object/from16 v2, v46

    move/from16 v3, v47

    invoke-interface {v0, v1, v2, v3}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->startConnection(Ljava/lang/String;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;I)Z

    move-result v45

    if-nez v45, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    const-string v46, "key_vpn"

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getErrorString(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v35

    const/16 v41, 0x0

    invoke-virtual/range {v35 .. v35}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v45

    if-nez v45, :cond_a48

    invoke-virtual/range {v35 .. v35}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/String;

    if-eqz v41, :cond_a48

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$900()Z

    move-result v45

    if-eqz v45, :cond_a48

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "vpn handle : notify app launch : Cannot start vpn, mocana returned error:"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v32

    move-object/from16 v2, v41

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->createNotification(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3400(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    const-string v46, "vpn handle : notify app launch : Cannot start vpn, mocana returned error"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a60
    .catch Landroid/os/RemoteException; {:try_start_890 .. :try_end_a60} :catch_a62

    goto/16 :goto_27

    :catch_a62
    move-exception v14

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "vpn handle : Exceptionin notify: "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-static {v14}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27

    :cond_a83
    :try_start_a83
    const-string v45, "CONNECTED"

    move-object/from16 v0, v41

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_27

    if-eqz v15, :cond_27

    invoke-virtual {v15}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->getInterfaceName()Ljava/lang/String;

    move-result-object v45

    if-eqz v45, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->packageNameVpnMap:Ljava/util/HashMap;
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$4200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/HashMap;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;

    if-eqz v42, :cond_27

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getState()I

    move-result v45

    if-nez v45, :cond_b02

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    invoke-virtual {v15}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->getInterfaceName()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v45

    move/from16 v1, v40

    move-object/from16 v2, v46

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->addIPtableRoute(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2500(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move/from16 v1, v40

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->removeIPtableBLock(I)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2600(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V

    const/16 v45, 0x1

    move-object/from16 v0, v42

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setState(I)V

    invoke-virtual {v15}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->getInterfaceName()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v42

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setInterface(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getProfileName()Ljava/lang/String;

    move-result-object v46

    invoke-virtual {v15}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->getInterfaceName()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    move/from16 v2, v40

    move-object/from16 v3, v47

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->setDnsSystemProperty(Ljava/lang/String;ILjava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2700(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_27

    :cond_b02
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$900()Z

    move-result v45

    if-eqz v45, :cond_27

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "vpn handle : notify app launch : Already running application ignoring:"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getPackageName()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b26
    .catch Landroid/os/RemoteException; {:try_start_a83 .. :try_end_b26} :catch_a62

    goto/16 :goto_27

    :pswitch_b28
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    const-string v46, "vpn handle : retry vpn"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->cancelNotification()V
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->isNetworkConnected()Z
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1100(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Z

    move-result v45

    if-eqz v45, :cond_d04

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    const-string v46, "vpn handle : retry vpn : Network is connected"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_b4f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    move-result-object v45

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-object/from16 v45, v0

    if-eqz v45, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v45

    invoke-interface/range {v45 .. v45}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_b73
    :goto_b73
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_cf9

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileNameVpnMap:Ljava/util/HashMap;
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/HashMap;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;

    invoke-virtual {v15}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->getVpnStateList()Ljava/util/ArrayList;

    move-result-object v25

    const/16 v34, 0x1

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_b9d
    :goto_b9d
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_bc8

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getCid()I

    move-result v45

    if-lez v45, :cond_bc5

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getCid()I

    move-result v45

    if-lez v45, :cond_b9d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getPackageName()Ljava/lang/String;

    move-result-object v46

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->isPackageRunning(Ljava/lang/String;)Z
    invoke-static/range {v45 .. v46}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$4000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_b9d

    :cond_bc5
    const/16 v34, 0x0

    goto :goto_b9d

    :cond_bc8
    if-eqz v34, :cond_bfd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_bdb
    .catch Landroid/os/RemoteException; {:try_start_b4f .. :try_end_bdb} :catch_bdc

    goto :goto_b73

    :catch_bdc
    move-exception v14

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "vpn handle : retry vpn : Exception at mocana:"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-static {v14}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27

    :cond_bfd
    :try_start_bfd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    const-string v46, "key_vpn"

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getState(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v36

    const/16 v41, 0x0

    invoke-virtual/range {v36 .. v36}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v45

    if-nez v45, :cond_c1d

    invoke-virtual/range {v36 .. v36}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/String;

    :cond_c1d
    if-eqz v41, :cond_b73

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "vpn handle : retry vpn : Callback state: "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v45, "IDLE"

    move-object/from16 v0, v41

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-nez v45, :cond_c55

    const-string v45, "FAILED"

    move-object/from16 v0, v41

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_b73

    :cond_c55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    move-result-object v45

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-object/from16 v45, v0

    new-instance v46, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnCallback;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    invoke-direct/range {v46 .. v48}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnCallback;-><init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v47, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->findUid()I
    invoke-static/range {v47 .. v47}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$4100(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)I

    move-result v47

    move-object/from16 v0, v45

    move-object/from16 v1, v21

    move-object/from16 v2, v46

    move/from16 v3, v47

    invoke-interface {v0, v1, v2, v3}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->startConnection(Ljava/lang/String;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;I)Z

    move-result v45

    if-nez v45, :cond_ce6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    const-string v46, "key_vpn"

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getErrorString(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v36

    const/16 v41, 0x0

    invoke-virtual/range {v36 .. v36}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v45

    if-nez v45, :cond_cdb

    invoke-virtual/range {v36 .. v36}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/String;

    if-eqz v41, :cond_cdb

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "vpn handle : retry vpn : Cannot start vpn, mocana returned error:"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cdb
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    const-string v46, "vpn handle : retry vpn : Cannot start vpn, mocana returned error"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b73

    :cond_ce6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b73

    :cond_cf9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->createNotification()V
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2900(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V
    :try_end_d02
    .catch Landroid/os/RemoteException; {:try_start_bfd .. :try_end_d02} :catch_bdc

    goto/16 :goto_27

    :cond_d04
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    const-string v46, "vpn handle : retry vpn : Network is not connected"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27

    :pswitch_d0f
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v45

    const-string v46, "vpn handle : vpn init bind"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v45, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->bindMocanaVpnInterface()V
    invoke-static/range {v45 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1400(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    goto/16 :goto_27

    nop

    :pswitch_data_d24
    .packed-switch 0x1
        :pswitch_28
        :pswitch_490
        :pswitch_736
        :pswitch_7ad
        :pswitch_801
        :pswitch_b28
        :pswitch_871
        :pswitch_d0f
    .end packed-switch

    :pswitch_data_d38
    .packed-switch 0x1
        :pswitch_d8
        :pswitch_2d4
        :pswitch_d6
        :pswitch_134
        :pswitch_20e
        :pswitch_371
    .end packed-switch

    :sswitch_data_d48
    .sparse-switch
        0x1 -> :sswitch_3a4
        0x5 -> :sswitch_409
    .end sparse-switch
.end method
