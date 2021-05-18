.class final Lha;
.super Lnkd;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 154
    invoke-direct {p0}, Lnkd;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lnil;)Z
    .locals 1

    .prologue
    .line 159
    invoke-super {p0, p1}, Lnkd;->a(Lnil;)Z

    move-result v0

    return v0
.end method

.method protected a(Lnil;Z)Z
    .locals 1

    .prologue
    .line 167
    invoke-super {p0, p1, p2}, Lnkd;->a(Lnil;Z)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    const-string v0, "CustomDispatchValidator"

    return-object v0
.end method
