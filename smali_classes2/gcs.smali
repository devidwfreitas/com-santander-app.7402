.class Lgcs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgti;


# instance fields
.field final synthetic a:Lgcr;


# direct methods
.method constructor <init>(Lgcr;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lgcs;->a:Lgcr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 151
    const-string v0, "botao fechar ajuda"

    iget-object v1, p0, Lgcs;->a:Lgcr;

    iget-object v1, v1, Lgcr;->a:Lgtd;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void
.end method
