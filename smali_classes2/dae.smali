.class public Ldae;
.super Ldsl;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ldsl;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldry;)V
    .locals 0

    invoke-direct {p0, p1}, Ldsl;-><init>(Ldry;)V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ldsl;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
