.class Lkjv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkhj;


# instance fields
.field final synthetic a:Lkjo;


# direct methods
.method constructor <init>(Lkjo;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lkjv;->a:Lkjo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 147
    iget-object v0, p0, Lkjv;->a:Lkjo;

    invoke-static {v0, p2}, Lkjo;->a(Lkjo;I)I

    .line 148
    invoke-static {p1}, Lkjo;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 149
    iget-object v0, p0, Lkjv;->a:Lkjo;

    invoke-static {v0}, Lkjo;->a(Lkjo;)Lkjn;

    move-result-object v0

    invoke-interface {v0, p1}, Lkjn;->a(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lkjv;->a:Lkjo;

    invoke-static {v0}, Lkjo;->a(Lkjo;)Lkjn;

    move-result-object v0

    const-string v1, ""

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lkjn;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lkjv;->a:Lkjo;

    invoke-static {v0}, Lkjo;->a(Lkjo;)Lkjn;

    move-result-object v0

    const-string v1, ""

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lkjn;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lkjv;->a:Lkjo;

    invoke-static {v0}, Lkjo;->b(Lkjo;)Lkjh;

    move-result-object v0

    invoke-virtual {v0, p2}, Lkjh;->c(I)V

    .line 154
    return-void
.end method
