.class public final enum Lcom/mechat/nostra13/universalimageloader/core/assist/LoadedFrom;
.super Ljava/lang/Enum;
.source "LoadedFrom.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mechat/nostra13/universalimageloader/core/assist/LoadedFrom;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DISC_CACHE:Lcom/mechat/nostra13/universalimageloader/core/assist/LoadedFrom;

.field private static final synthetic ENUM$VALUES:[Lcom/mechat/nostra13/universalimageloader/core/assist/LoadedFrom;

.field public static final enum MEMORY_CACHE:Lcom/mechat/nostra13/universalimageloader/core/assist/LoadedFrom;

.field public static final enum NETWORK:Lcom/mechat/nostra13/universalimageloader/core/assist/LoadedFrom;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/mechat/nostra13/universalimageloader/core/assist/LoadedFrom;

    const-string v1, "NETWORK"

    invoke-direct {v0, v1, v2}, Lcom/mechat/nostra13/universalimageloader/core/assist/LoadedFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mechat/nostra13/universalimageloader/core/assist/LoadedFrom;->NETWORK:Lcom/mechat/nostra13/universalimageloader/core/assist/LoadedFrom;

    new-instance v0, Lcom/mechat/nostra13/universalimageloader/core/assist/LoadedFrom;

    const-string v1, "DISC_CACHE"

    invoke-direct {v0, v1, v3}, Lcom/mechat/nostra13/universalimageloader/core/assist/LoadedFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mechat/nostra13/universalimageloader/core/assist/LoadedFrom;->DISC_CACHE:Lcom/mechat/nostra13/universalimageloader/core/assist/LoadedFrom;

    new-instance v0, Lcom/mechat/nostra13/universalimageloader/core/assist/LoadedFrom;

    const-string v1, "MEMORY_CACHE"

    invoke-direct {v0, v1, v4}, Lcom/mechat/nostra13/universalimageloader/core/assist/LoadedFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mechat/nostra13/universalimageloader/core/assist/LoadedFrom;->MEMORY_CACHE:Lcom/mechat/nostra13/universalimageloader/core/assist/LoadedFrom;

    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/mechat/nostra13/universalimageloader/core/assist/LoadedFrom;

    sget-object v1, Lcom/mechat/nostra13/universalimageloader/core/assist/LoadedFrom;->NETWORK:Lcom/mechat/nostra13/universalimageloader/core/assist/LoadedFrom;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mechat/nostra13/universalimageloader/core/assist/LoadedFrom;->DISC_CACHE:Lcom/mechat/nostra13/universalimageloader/core/assist/LoadedFrom;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mechat/nostra13/universalimageloader/core/assist/LoadedFrom;->MEMORY_CACHE:Lcom/mechat/nostra13/universalimageloader/core/assist/LoadedFrom;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mechat/nostra13/universalimageloader/core/assist/LoadedFrom;->ENUM$VALUES:[Lcom/mechat/nostra13/universalimageloader/core/assist/LoadedFrom;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mechat/nostra13/universalimageloader/core/assist/LoadedFrom;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/mechat/nostra13/universalimageloader/core/assist/LoadedFrom;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mechat/nostra13/universalimageloader/core/assist/LoadedFrom;

    return-object v0
.end method

.method public static values()[Lcom/mechat/nostra13/universalimageloader/core/assist/LoadedFrom;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/mechat/nostra13/universalimageloader/core/assist/LoadedFrom;->ENUM$VALUES:[Lcom/mechat/nostra13/universalimageloader/core/assist/LoadedFrom;

    array-length v1, v0

    new-array v2, v1, [Lcom/mechat/nostra13/universalimageloader/core/assist/LoadedFrom;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
