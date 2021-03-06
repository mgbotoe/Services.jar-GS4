.class Lcom/android/server/PowerSaving3LMService$RulesEngine;
.super Ljava/lang/Object;
.source "PowerSaving3LMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerSaving3LMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RulesEngine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PowerSaving3LMService$RulesEngine$Rule;
    }
.end annotation


# instance fields
.field private mRulesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/PowerSaving3LMService$RulesEngine$Rule;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/PowerSaving3LMService;


# direct methods
.method constructor <init>(Lcom/android/server/PowerSaving3LMService;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/PowerSaving3LMService$RulesEngine;->this$0:Lcom/android/server/PowerSaving3LMService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/PowerSaving3LMService$RulesEngine;->mRulesList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addPolicy(Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/android/server/PowerSaving3LMService$RulesEngine;->mRulesList:Ljava/util/ArrayList;

    if-nez v2, :cond_b

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/PowerSaving3LMService$RulesEngine;->mRulesList:Ljava/util/ArrayList;

    :cond_b
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v4, p0, Lcom/android/server/PowerSaving3LMService$RulesEngine;->mRulesList:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/server/PowerSaving3LMService$RulesEngine$Rule;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-direct {v5, p0, v2, v3}, Lcom/android/server/PowerSaving3LMService$RulesEngine$Rule;-><init>(Lcom/android/server/PowerSaving3LMService$RulesEngine;Ljava/lang/String;Z)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_3a
    return-void
.end method

.method public checkPolicy(Ljava/lang/String;)Z
    .registers 8

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/android/server/PowerSaving3LMService$RulesEngine;->mRulesList:Ljava/util/ArrayList;

    if-nez v5, :cond_8

    const/4 v5, 0x0

    :goto_7
    return v5

    :cond_8
    iget-object v5, p0, Lcom/android/server/PowerSaving3LMService$RulesEngine;->mRulesList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/PowerSaving3LMService$RulesEngine$Rule;

    #getter for: Lcom/android/server/PowerSaving3LMService$RulesEngine$Rule;->mRegexStr:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/PowerSaving3LMService$RulesEngine$Rule;->access$1100(Lcom/android/server/PowerSaving3LMService$RulesEngine$Rule;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_e

    #getter for: Lcom/android/server/PowerSaving3LMService$RulesEngine$Rule;->mRegex:Ljava/util/regex/Pattern;
    invoke-static {v4}, Lcom/android/server/PowerSaving3LMService$RulesEngine$Rule;->access$1300(Lcom/android/server/PowerSaving3LMService$RulesEngine$Rule;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_e

    #getter for: Lcom/android/server/PowerSaving3LMService$RulesEngine$Rule;->mPermitted:Z
    invoke-static {v4}, Lcom/android/server/PowerSaving3LMService$RulesEngine$Rule;->access$1200(Lcom/android/server/PowerSaving3LMService$RulesEngine$Rule;)Z

    move-result v3

    move v2, v0

    goto :goto_e

    :cond_38
    move v5, v3

    goto :goto_7
.end method

.method public isInitialized()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/PowerSaving3LMService$RulesEngine;->mRulesList:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public loadPolicy(Ljava/util/Map;)Z
    .registers 10

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/PowerSaving3LMService$RulesEngine;->mRulesList:Ljava/util/ArrayList;

    move-object v2, p1

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_57

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    :try_start_1c
    iget-object v6, p0, Lcom/android/server/PowerSaving3LMService$RulesEngine;->mRulesList:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/server/PowerSaving3LMService$RulesEngine$Rule;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-direct {v7, p0, v4, v5}, Lcom/android/server/PowerSaving3LMService$RulesEngine$Rule;-><init>(Lcom/android/server/PowerSaving3LMService$RulesEngine;Ljava/lang/String;Z)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_36
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_1c .. :try_end_36} :catch_37

    goto :goto_10

    :catch_37
    move-exception v0

    const-string v5, "PowerSavingService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid regex pattern: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :cond_57
    const/4 v4, 0x1

    return v4
.end method

.method public updatePolicy(Ljava/lang/String;Z)Z
    .registers 9

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/server/PowerSaving3LMService$RulesEngine;->mRulesList:Ljava/util/ArrayList;

    if-nez v4, :cond_c

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/PowerSaving3LMService$RulesEngine;->mRulesList:Ljava/util/ArrayList;

    :cond_c
    iget-object v4, p0, Lcom/android/server/PowerSaving3LMService$RulesEngine;->mRulesList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PowerSaving3LMService$RulesEngine$Rule;

    #getter for: Lcom/android/server/PowerSaving3LMService$RulesEngine$Rule;->mRegexStr:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/PowerSaving3LMService$RulesEngine$Rule;->access$1100(Lcom/android/server/PowerSaving3LMService$RulesEngine$Rule;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    #setter for: Lcom/android/server/PowerSaving3LMService$RulesEngine$Rule;->mPermitted:Z
    invoke-static {v2, p2}, Lcom/android/server/PowerSaving3LMService$RulesEngine$Rule;->access$1202(Lcom/android/server/PowerSaving3LMService$RulesEngine$Rule;Z)Z

    :goto_2b
    return v3

    :cond_2c
    :try_start_2c
    iget-object v4, p0, Lcom/android/server/PowerSaving3LMService$RulesEngine;->mRulesList:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/server/PowerSaving3LMService$RulesEngine$Rule;

    invoke-direct {v5, p0, p1, p2}, Lcom/android/server/PowerSaving3LMService$RulesEngine$Rule;-><init>(Lcom/android/server/PowerSaving3LMService$RulesEngine;Ljava/lang/String;Z)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_36
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2c .. :try_end_36} :catch_37

    goto :goto_2b

    :catch_37
    move-exception v0

    const-string v3, "PowerSavingService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing regex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_2b
.end method
