.class Lluq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lkvs;

.field final synthetic b:Lluh;


# direct methods
.method constructor <init>(Lluh;Lkvs;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lluq;->b:Lluh;

    iput-object p2, p0, Lluq;->a:Lkvs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lluq;->b:Lluh;

    invoke-static {v0}, Lluh;->c(Lluh;)Llus;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lluq;->b:Lluh;

    invoke-static {v0}, Lluh;->c(Lluh;)Llus;

    move-result-object v0

    iget-object v1, p0, Lluq;->a:Lkvs;

    invoke-interface {v0, v1}, Llus;->a(Lkvs;)V

    .line 276
    :cond_0
    return-void
.end method
