.class Lade;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltj;


# instance fields
.field final synthetic a:Lacy;


# direct methods
.method constructor <init>(Lacy;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lade;->a:Lacy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Labv;)V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lade;->a:Lacy;

    invoke-virtual {v0}, Lacy;->i()V

    .line 254
    return-void
.end method

.method public a(Laby;)V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lade;->a:Lacy;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lacy;->d:Ljava/lang/Boolean;

    .line 259
    iget-object v0, p0, Lade;->a:Lacy;

    invoke-virtual {v0}, Lacy;->k()V

    .line 260
    return-void
.end method
