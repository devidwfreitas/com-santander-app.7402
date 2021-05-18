.class Lluj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llui;


# direct methods
.method constructor <init>(Llui;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lluj;->a:Llui;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 115
    iget-object v0, p0, Lluj;->a:Llui;

    iget-object v0, v0, Llui;->c:Lluh;

    invoke-static {v0}, Lluh;->c(Lluh;)Llus;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lluj;->a:Llui;

    iget-object v0, v0, Llui;->c:Lluh;

    invoke-static {v0}, Lluh;->c(Lluh;)Llus;

    move-result-object v0

    iget-object v1, p0, Lluj;->a:Llui;

    iget-object v1, v1, Llui;->b:Lkvs;

    iget-object v2, p0, Lluj;->a:Llui;

    iget-object v2, v2, Llui;->c:Lluh;

    invoke-static {v2}, Lluh;->b(Lluh;)Lkwh;

    move-result-object v2

    iget-object v3, p0, Lluj;->a:Llui;

    iget-object v3, v3, Llui;->a:Llur;

    invoke-virtual {v3}, Llur;->getAdapterPosition()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Llus;->a(Lkvs;Lkwh;I)V

    .line 118
    :cond_0
    return-void
.end method
