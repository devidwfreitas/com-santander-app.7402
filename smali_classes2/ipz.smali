.class Lipz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lirt;


# instance fields
.field final synthetic a:Lipr;

.field final synthetic b:Lipu;


# direct methods
.method constructor <init>(Lipu;Lipr;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lipz;->b:Lipu;

    iput-object p2, p0, Lipz;->a:Lipr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lipa;)V
    .locals 1

    .prologue
    .line 184
    if-eqz p1, :cond_0

    .line 185
    invoke-virtual {p1}, Lipa;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lipz;->a:Lipr;

    invoke-interface {v0}, Lipr;->a()V

    .line 189
    :cond_0
    return-void
.end method
