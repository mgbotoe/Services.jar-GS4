.class public Lcom/android/server/content/SyncStorageEngine$PendingOperation;
.super Ljava/lang/Object;
.source "SyncStorageEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncStorageEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PendingOperation"
.end annotation


# instance fields
.field final account:Landroid/accounts/Account;

.field final authority:Ljava/lang/String;

.field authorityId:I

.field final expedited:Z

.field final extras:Landroid/os/Bundle;

.field flatExtras:[B

.field final reason:I

.field final syncSource:I

.field final userId:I


# direct methods
.method constructor <init>(Landroid/accounts/Account;IIILjava/lang/String;Landroid/os/Bundle;Z)V
    .registers 9

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->account:Landroid/accounts/Account;

    iput p2, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->userId:I

    iput p4, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->syncSource:I

    iput p3, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->reason:I

    iput-object p5, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->authority:Ljava/lang/String;

    if-eqz p6, :cond_15

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p6}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object p6, v0

    :cond_15
    iput-object p6, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->extras:Landroid/os/Bundle;

    iput-boolean p7, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->expedited:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->authorityId:I

    return-void
.end method

.method constructor <init>(Lcom/android/server/content/SyncStorageEngine$PendingOperation;)V
    .registers 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->account:Landroid/accounts/Account;

    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->account:Landroid/accounts/Account;

    iget v0, p1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->userId:I

    iput v0, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->userId:I

    iget v0, p1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->reason:I

    iput v0, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->reason:I

    iget v0, p1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->syncSource:I

    iput v0, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->syncSource:I

    iget-object v0, p1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->authority:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->authority:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->extras:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->extras:Landroid/os/Bundle;

    iget v0, p1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->authorityId:I

    iput v0, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->authorityId:I

    iget-boolean v0, p1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->expedited:Z

    iput-boolean v0, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->expedited:Z

    return-void
.end method
