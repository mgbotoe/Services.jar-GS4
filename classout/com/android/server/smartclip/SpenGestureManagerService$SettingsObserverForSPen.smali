.class Lcom/android/server/smartclip/SpenGestureManagerService$SettingsObserverForSPen;
.super Landroid/database/ContentObserver;
.source "SpenGestureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/SpenGestureManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserverForSPen"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/smartclip/SpenGestureManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SettingsObserverForSPen;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method observe()V
    .registers 4

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$200()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_quick_note"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "haptic_feedback_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onChange(Z)V
    .registers 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$200()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_screen_quick_note"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_37

    move v0, v2

    :goto_13
    iget-object v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SettingsObserverForSPen;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    #getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;
    invoke-static {v4}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$500(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/SmartClipView;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/server/smartclip/SmartClipView;->setDoubleTapStateBySettingMenu(Z)V

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$200()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "haptic_feedback_enabled"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_39

    move v1, v2

    :goto_2d
    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SettingsObserverForSPen;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    #getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;
    invoke-static {v2}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$500(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/SmartClipView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/smartclip/SmartClipView;->setHapticEnabled(Z)V

    return-void

    :cond_37
    move v0, v3

    goto :goto_13

    :cond_39
    move v1, v3

    goto :goto_2d
.end method
