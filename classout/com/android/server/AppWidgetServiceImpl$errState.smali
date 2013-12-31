.class final enum Lcom/android/server/AppWidgetServiceImpl$errState;
.super Ljava/lang/Enum;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "errState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/AppWidgetServiceImpl$errState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/AppWidgetServiceImpl$errState;

.field public static final enum APPWIDGET_ERR:Lcom/android/server/AppWidgetServiceImpl$errState;

.field public static final enum PARSER_ERR:Lcom/android/server/AppWidgetServiceImpl$errState;

.field public static final enum PARSING_ABNORMALL_ERR:Lcom/android/server/AppWidgetServiceImpl$errState;

.field public static final enum PARSING_INBOUND_ERR:Lcom/android/server/AppWidgetServiceImpl$errState;

.field public static final enum PARSING_IO_ERR:Lcom/android/server/AppWidgetServiceImpl$errState;

.field public static final enum PARSING_NULL_ERR:Lcom/android/server/AppWidgetServiceImpl$errState;

.field public static final enum PARSING_NUMBERFORMAT_ERR:Lcom/android/server/AppWidgetServiceImpl$errState;

.field public static final enum PARSING_XMLPULLPARSER_ERR:Lcom/android/server/AppWidgetServiceImpl$errState;

.field public static final enum WRITE_ERR:Lcom/android/server/AppWidgetServiceImpl$errState;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/server/AppWidgetServiceImpl$errState;

    const-string v1, "PARSER_ERR"

    invoke-direct {v0, v1, v3}, Lcom/android/server/AppWidgetServiceImpl$errState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/AppWidgetServiceImpl$errState;->PARSER_ERR:Lcom/android/server/AppWidgetServiceImpl$errState;

    new-instance v0, Lcom/android/server/AppWidgetServiceImpl$errState;

    const-string v1, "APPWIDGET_ERR"

    invoke-direct {v0, v1, v4}, Lcom/android/server/AppWidgetServiceImpl$errState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/AppWidgetServiceImpl$errState;->APPWIDGET_ERR:Lcom/android/server/AppWidgetServiceImpl$errState;

    new-instance v0, Lcom/android/server/AppWidgetServiceImpl$errState;

    const-string v1, "PARSING_ABNORMALL_ERR"

    invoke-direct {v0, v1, v5}, Lcom/android/server/AppWidgetServiceImpl$errState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/AppWidgetServiceImpl$errState;->PARSING_ABNORMALL_ERR:Lcom/android/server/AppWidgetServiceImpl$errState;

    new-instance v0, Lcom/android/server/AppWidgetServiceImpl$errState;

    const-string v1, "PARSING_NULL_ERR"

    invoke-direct {v0, v1, v6}, Lcom/android/server/AppWidgetServiceImpl$errState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/AppWidgetServiceImpl$errState;->PARSING_NULL_ERR:Lcom/android/server/AppWidgetServiceImpl$errState;

    new-instance v0, Lcom/android/server/AppWidgetServiceImpl$errState;

    const-string v1, "PARSING_NUMBERFORMAT_ERR"

    invoke-direct {v0, v1, v7}, Lcom/android/server/AppWidgetServiceImpl$errState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/AppWidgetServiceImpl$errState;->PARSING_NUMBERFORMAT_ERR:Lcom/android/server/AppWidgetServiceImpl$errState;

    new-instance v0, Lcom/android/server/AppWidgetServiceImpl$errState;

    const-string v1, "PARSING_XMLPULLPARSER_ERR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/server/AppWidgetServiceImpl$errState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/AppWidgetServiceImpl$errState;->PARSING_XMLPULLPARSER_ERR:Lcom/android/server/AppWidgetServiceImpl$errState;

    new-instance v0, Lcom/android/server/AppWidgetServiceImpl$errState;

    const-string v1, "PARSING_IO_ERR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/server/AppWidgetServiceImpl$errState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/AppWidgetServiceImpl$errState;->PARSING_IO_ERR:Lcom/android/server/AppWidgetServiceImpl$errState;

    new-instance v0, Lcom/android/server/AppWidgetServiceImpl$errState;

    const-string v1, "PARSING_INBOUND_ERR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/server/AppWidgetServiceImpl$errState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/AppWidgetServiceImpl$errState;->PARSING_INBOUND_ERR:Lcom/android/server/AppWidgetServiceImpl$errState;

    new-instance v0, Lcom/android/server/AppWidgetServiceImpl$errState;

    const-string v1, "WRITE_ERR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/server/AppWidgetServiceImpl$errState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/AppWidgetServiceImpl$errState;->WRITE_ERR:Lcom/android/server/AppWidgetServiceImpl$errState;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/android/server/AppWidgetServiceImpl$errState;

    sget-object v1, Lcom/android/server/AppWidgetServiceImpl$errState;->PARSER_ERR:Lcom/android/server/AppWidgetServiceImpl$errState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/AppWidgetServiceImpl$errState;->APPWIDGET_ERR:Lcom/android/server/AppWidgetServiceImpl$errState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/AppWidgetServiceImpl$errState;->PARSING_ABNORMALL_ERR:Lcom/android/server/AppWidgetServiceImpl$errState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/AppWidgetServiceImpl$errState;->PARSING_NULL_ERR:Lcom/android/server/AppWidgetServiceImpl$errState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/AppWidgetServiceImpl$errState;->PARSING_NUMBERFORMAT_ERR:Lcom/android/server/AppWidgetServiceImpl$errState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/server/AppWidgetServiceImpl$errState;->PARSING_XMLPULLPARSER_ERR:Lcom/android/server/AppWidgetServiceImpl$errState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/server/AppWidgetServiceImpl$errState;->PARSING_IO_ERR:Lcom/android/server/AppWidgetServiceImpl$errState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/server/AppWidgetServiceImpl$errState;->PARSING_INBOUND_ERR:Lcom/android/server/AppWidgetServiceImpl$errState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/server/AppWidgetServiceImpl$errState;->WRITE_ERR:Lcom/android/server/AppWidgetServiceImpl$errState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/AppWidgetServiceImpl$errState;->$VALUES:[Lcom/android/server/AppWidgetServiceImpl$errState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/AppWidgetServiceImpl$errState;
    .registers 2

    const-class v0, Lcom/android/server/AppWidgetServiceImpl$errState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppWidgetServiceImpl$errState;

    return-object v0
.end method

.method public static values()[Lcom/android/server/AppWidgetServiceImpl$errState;
    .registers 1

    sget-object v0, Lcom/android/server/AppWidgetServiceImpl$errState;->$VALUES:[Lcom/android/server/AppWidgetServiceImpl$errState;

    invoke-virtual {v0}, [Lcom/android/server/AppWidgetServiceImpl$errState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/AppWidgetServiceImpl$errState;

    return-object v0
.end method
