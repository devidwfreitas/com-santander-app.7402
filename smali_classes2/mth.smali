.class Lmth;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmtp;


# instance fields
.field final synthetic a:Lmte;


# direct methods
.method constructor <init>(Lmte;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lmth;->a:Lmte;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 176
    invoke-static {}, Lmwm;->f()V

    .line 177
    iget-object v0, p0, Lmth;->a:Lmte;

    iget-object v0, v0, Lmte;->a:Lmsy;

    if-nez v0, :cond_0

    .line 181
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lmth;->a:Lmte;

    invoke-static {v0}, Lmte;->a(Lmte;)Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->b()I

    move-result v0

    .line 180
    iget-object v1, p0, Lmth;->a:Lmte;

    invoke-static {v1}, Lmte;->g(Lmte;)Lmvf;

    move-result-object v1

    invoke-interface {v1, v0}, Lmvf;->a(I)V

    goto :goto_0
.end method
