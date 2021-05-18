.class Lhgi;
.super Lhgo;
.source "SourceFile"


# instance fields
.field final synthetic a:Lhgf;

.field final synthetic b:Lhgh;


# direct methods
.method constructor <init>(Lhgh;Ljava/lang/String;Lhgf;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lhgi;->b:Lhgh;

    iput-object p3, p0, Lhgi;->a:Lhgf;

    invoke-direct {p0, p1, p2}, Lhgo;-><init>(Lhgh;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lhgi;->a:Lhgf;

    iget-object v1, p0, Lhgi;->b:Lhgh;

    invoke-static {v1}, Lhgh;->a(Lhgh;)Lhfl;

    move-result-object v1

    invoke-interface {v0, v1}, Lhgf;->a(Lhfx;)V

    .line 66
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lhgi;->a:Lhgf;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lhgf;->a(Lhfi;)V

    .line 71
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lhgi;->a:Lhgf;

    invoke-interface {v0}, Lhgf;->a()V

    .line 76
    return-void
.end method
