.class Llul;
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
    .line 143
    iput-object p1, p0, Llul;->a:Llui;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Llul;->a:Llui;

    iget-object v0, v0, Llui;->c:Lluh;

    invoke-static {v0}, Lluh;->c(Lluh;)Llus;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Llul;->a:Llui;

    iget-object v0, v0, Llui;->c:Lluh;

    invoke-static {v0}, Lluh;->c(Lluh;)Llus;

    move-result-object v0

    iget-object v1, p0, Llul;->a:Llui;

    iget-object v1, v1, Llui;->b:Lkvs;

    iget-object v2, p0, Llul;->a:Llui;

    iget-object v2, v2, Llui;->a:Llur;

    invoke-virtual {v2}, Llur;->getAdapterPosition()I

    move-result v2

    invoke-interface {v0, v1, v2}, Llus;->a(Lkvs;I)V

    .line 149
    :cond_0
    return-void
.end method
