.class Lluk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmbn;


# instance fields
.field final synthetic a:Llui;


# direct methods
.method constructor <init>(Llui;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lluk;->a:Llui;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lkwk;)V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lluk;->a:Llui;

    iget-object v0, v0, Llui;->c:Lluh;

    invoke-static {v0}, Lluh;->c(Lluh;)Llus;

    move-result-object v0

    iget-object v1, p0, Lluk;->a:Llui;

    iget-object v1, v1, Llui;->a:Llur;

    invoke-virtual {v1}, Llur;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, p1, v1}, Llus;->a(Lkwk;I)V

    .line 135
    return-void
.end method
