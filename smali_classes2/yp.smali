.class Lyp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lya;


# instance fields
.field final synthetic a:Lym;


# direct methods
.method constructor <init>(Lym;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lyp;->a:Lym;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Labv;)V
    .locals 3

    .prologue
    .line 131
    move-object v0, p1

    check-cast v0, Lxx;

    .line 132
    const-string v0, "servico"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chamou servico de recusa"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void
.end method

.method public a(Laby;)V
    .locals 0

    .prologue
    .line 137
    return-void
.end method
