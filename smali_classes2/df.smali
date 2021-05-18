.class Ldf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldm;


# instance fields
.field final synthetic a:Lcz;

.field private final synthetic b:Lbfr;


# direct methods
.method constructor <init>(Lcz;Lbfr;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ldf;->a:Lcz;

    iput-object p2, p0, Ldf;->b:Lbfr;

    .line 687
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Ldf;->b:Lbfr;

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Ldf;->b:Lbfr;

    invoke-interface {v0}, Lbfr;->a()V

    .line 705
    :cond_0
    return-void
.end method

.method public a(F)V
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Ldf;->b:Lbfr;

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Ldf;->b:Lbfr;

    invoke-interface {v0, p1}, Lbfr;->a(F)V

    .line 693
    :cond_0
    return-void
.end method

.method public a(IF)V
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Ldf;->b:Lbfr;

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Ldf;->b:Lbfr;

    invoke-interface {v0, p1, p2}, Lbfr;->a(IF)V

    .line 699
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Ldf;->b:Lbfr;

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Ldf;->b:Lbfr;

    invoke-interface {v0, p1}, Lbfr;->a(Ljava/lang/Exception;)V

    .line 711
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 748
    iget-object v0, p0, Ldf;->b:Lbfr;

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Ldf;->b:Lbfr;

    invoke-interface {v0, p1}, Lbfr;->a(Ljava/lang/String;)V

    .line 751
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 724
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 725
    iget-object v1, p0, Ldf;->a:Lcz;

    invoke-static {v1, v0}, Lcz;->a(Lcz;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 735
    :goto_0
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 736
    iget-object v1, p0, Ldf;->a:Lcz;

    invoke-static {v1, v0}, Lcz;->b(Lcz;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 743
    :goto_1
    return-void

    .line 738
    :catch_0
    move-exception v0

    goto :goto_1

    .line 728
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 715
    iget-object v0, p0, Ldf;->b:Lbfr;

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Ldf;->b:Lbfr;

    invoke-interface {v0}, Lbfr;->b()V

    .line 717
    :cond_0
    return-void
.end method
