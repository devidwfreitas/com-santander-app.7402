.class Ligx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Ligc;

.field final synthetic b:Ligw;


# direct methods
.method constructor <init>(Ligw;Ligc;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Ligx;->b:Ligw;

    iput-object p2, p0, Ligx;->a:Ligc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 124
    check-cast p1, Lis;

    .line 126
    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v0

    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lige;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lige;

    .line 128
    if-eqz v0, :cond_0

    .line 129
    iget-object v1, p0, Ligx;->b:Ligw;

    iget-object v1, v1, Ligw;->b:Ligu;

    invoke-static {v1}, Ligu;->b(Ligu;)Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v0}, Lige;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Lmir;->a(I)V

    .line 130
    iget-object v0, p0, Ligx;->b:Ligw;

    iget-object v0, v0, Ligw;->b:Ligu;

    invoke-static {v0}, Ligu;->d(Ligu;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;

    invoke-virtual {v0}, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-static {v0}, Lgpu;->a(Landroid/support/v7/app/ActionBar;)V

    .line 133
    :cond_0
    iget-object v0, p0, Ligx;->b:Ligw;

    iget-object v0, v0, Ligw;->b:Ligu;

    invoke-static {v0}, Ligu;->a(Ligu;)Ligt;

    move-result-object v0

    iget-object v1, p0, Ligx;->b:Ligw;

    iget-object v1, v1, Ligw;->b:Ligu;

    iget-object v2, p0, Ligx;->a:Ligc;

    iget-object v3, p0, Ligx;->b:Ligw;

    iget-object v3, v3, Ligw;->a:Ligg;

    invoke-static {v1, v2, v3}, Ligu;->a(Ligu;Ligc;Ligg;)Lgvb;

    move-result-object v1

    invoke-interface {v0, v1}, Ligt;->a(Lgvb;)V

    .line 134
    return-void
.end method
