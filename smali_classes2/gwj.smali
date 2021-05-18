.class Lgwj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lgkv",
        "<",
        "Lfuy;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgwb;

.field final synthetic b:Lgwe;


# direct methods
.method constructor <init>(Lgwe;Lgwb;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lgwj;->b:Lgwe;

    iput-object p2, p0, Lgwj;->a:Lgwb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lfuy;)V
    .locals 1

    .prologue
    .line 168
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lfuy;->hasError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    :cond_0
    iget-object v0, p0, Lgwj;->a:Lgwb;

    invoke-interface {v0}, Lgwb;->a()V

    .line 173
    :goto_0
    return-void

    .line 171
    :cond_1
    iget-object v0, p0, Lgwj;->a:Lgwb;

    invoke-interface {v0, p1}, Lgwb;->a(Lcom/santander/app/contacorrente/domain/ExtratoContract;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 165
    check-cast p1, Lfuy;

    invoke-virtual {p0, p1}, Lgwj;->a(Lfuy;)V

    return-void
.end method
