.class Lhgn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfoh;


# instance fields
.field final synthetic a:Lhgm;


# direct methods
.method constructor <init>(Lhgm;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lhgn;->a:Lhgm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lhgn;->a:Lhgm;

    iget-object v0, v0, Lhgm;->a:Lhge;

    iget-object v1, p0, Lhgn;->a:Lhgm;

    iget-object v1, v1, Lhgm;->b:Lhgh;

    invoke-static {v1}, Lhgh;->a(Lhgh;)Lhfl;

    move-result-object v1

    invoke-interface {v0, v1}, Lhge;->a(Lhfy;)V

    .line 163
    return-void
.end method
