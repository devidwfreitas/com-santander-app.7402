.class final Lbsy;
.super Lbqj;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 36
    const v2, 0x1000a

    const v3, 0x1000b

    const v4, 0x133c6ab

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lbqj;-><init>(Landroid/content/Context;IIILjava/lang/String;)V

    .line 42
    iput-object p3, p0, Lbsy;->a:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method protected a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 47
    const-string v0, "com.facebook.platform.extra.LOGGER_REF"

    iget-object v1, p0, Lbsy;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method
