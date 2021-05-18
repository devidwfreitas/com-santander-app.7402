.class public final enum Lkqm;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lkqm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkqm;

.field public static final enum INSTANCE:Lkqm;


# instance fields
.field private mAssistances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkqd;",
            ">;"
        }
    .end annotation

    .annotation runtime Leks;
        a = "mAssistances"
    .end annotation
.end field

.field private mCoverages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkqo;",
            ">;"
        }
    .end annotation

    .annotation runtime Leks;
        a = "mCoverages"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 16
    new-instance v0, Lkqm;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lkqm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkqm;->INSTANCE:Lkqm;

    .line 14
    const/4 v0, 0x1

    new-array v0, v0, [Lkqm;

    sget-object v1, Lkqm;->INSTANCE:Lkqm;

    aput-object v1, v0, v2

    sput-object v0, Lkqm;->$VALUES:[Lkqm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkqm;
    .locals 1

    .prologue
    .line 14
    const-class v0, Lkqm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lkqm;

    return-object v0
.end method

.method public static values()[Lkqm;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lkqm;->$VALUES:[Lkqm;

    invoke-virtual {v0}, [Lkqm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkqm;

    return-object v0
.end method


# virtual methods
.method public getmAssistances()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lkqd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lkqm;->mAssistances:Ljava/util/List;

    return-object v0
.end method

.method public getmCoverages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lkqo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lkqm;->mCoverages:Ljava/util/List;

    return-object v0
.end method

.method public setmAssistances(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkqd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    iput-object p1, p0, Lkqm;->mAssistances:Ljava/util/List;

    .line 37
    return-void
.end method

.method public setmCoverages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkqo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    iput-object p1, p0, Lkqm;->mCoverages:Ljava/util/List;

    .line 29
    return-void
.end method
