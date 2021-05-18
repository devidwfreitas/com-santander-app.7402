.class final Lbub;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbus;


# instance fields
.field final synthetic a:Lbvs;

.field final synthetic b:Lbue;


# direct methods
.method constructor <init>(Lbvs;Lbue;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lbub;->a:Lbvs;

    iput-object p2, p0, Lbub;->b:Lbue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbum;)V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p1, Lbum;->b:Lbuz;

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lbub;->a:Lbvs;

    iget-object v1, p1, Lbum;->a:Landroid/location/Location;

    invoke-static {v0, v1}, Lbua;->a(Lbvs;Landroid/location/Location;)Lcom/facebook/GraphRequest;

    move-result-object v0

    .line 181
    iget-object v1, p0, Lbub;->b:Lbue;

    invoke-interface {v1, v0}, Lbue;->a(Lcom/facebook/GraphRequest;)V

    .line 185
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lbub;->b:Lbue;

    iget-object v1, p1, Lbum;->b:Lbuz;

    invoke-static {v1}, Lbua;->a(Lbuz;)Lbud;

    move-result-object v1

    invoke-interface {v0, v1}, Lbue;->a(Lbud;)V

    goto :goto_0
.end method
