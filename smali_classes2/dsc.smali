.class public final enum Ldsc;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ldsc;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zzS:Ldsc;

.field public static final enum zzT:Ldsc;

.field public static final enum zzU:Ldsc;

.field public static final enum zzV:Ldsc;

.field private static final synthetic zzW:[Ldsc;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ldsc;

    const-string v1, "LOW"

    invoke-direct {v0, v1, v2}, Ldsc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldsc;->zzS:Ldsc;

    new-instance v0, Ldsc;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Ldsc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldsc;->zzT:Ldsc;

    new-instance v0, Ldsc;

    const-string v1, "HIGH"

    invoke-direct {v0, v1, v4}, Ldsc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldsc;->zzU:Ldsc;

    new-instance v0, Ldsc;

    const-string v1, "IMMEDIATE"

    invoke-direct {v0, v1, v5}, Ldsc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldsc;->zzV:Ldsc;

    const/4 v0, 0x4

    new-array v0, v0, [Ldsc;

    sget-object v1, Ldsc;->zzS:Ldsc;

    aput-object v1, v0, v2

    sget-object v1, Ldsc;->zzT:Ldsc;

    aput-object v1, v0, v3

    sget-object v1, Ldsc;->zzU:Ldsc;

    aput-object v1, v0, v4

    sget-object v1, Ldsc;->zzV:Ldsc;

    aput-object v1, v0, v5

    sput-object v0, Ldsc;->zzW:[Ldsc;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Ldsc;
    .locals 1

    sget-object v0, Ldsc;->zzW:[Ldsc;

    invoke-virtual {v0}, [Ldsc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldsc;

    return-object v0
.end method
