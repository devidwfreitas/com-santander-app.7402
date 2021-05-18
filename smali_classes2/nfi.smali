.class Lnfi;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lnfg;


# direct methods
.method constructor <init>(Lnfg;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lnfi;->a:Lnfg;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 116
    invoke-virtual {p0}, Lnfi;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
