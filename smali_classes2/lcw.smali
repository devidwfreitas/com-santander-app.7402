.class Llcw;
.super Llbb;
.source "SourceFile"


# instance fields
.field final synthetic a:Lkon;

.field final synthetic b:Llct;


# direct methods
.method constructor <init>(Llct;Lkon;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Llcw;->b:Llct;

    iput-object p2, p0, Llcw;->a:Lkon;

    invoke-direct {p0}, Llbb;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Llcw;->b:Llct;

    invoke-static {v0}, Llct;->c(Llct;)Llcx;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Llcw;->b:Llct;

    invoke-static {v0}, Llct;->c(Llct;)Llcx;

    move-result-object v0

    iget-object v1, p0, Llcw;->a:Lkon;

    invoke-interface {v0, v1}, Llcx;->a(Lkon;)V

    .line 134
    :cond_0
    return-void
.end method
