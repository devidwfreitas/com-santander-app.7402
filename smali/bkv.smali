.class final Lbkv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbim;


# instance fields
.field final synthetic a:Lbkf;

.field final synthetic b:Lcom/facebook/GraphRequest;

.field final synthetic c:Lbls;

.field final synthetic d:Lblo;


# direct methods
.method constructor <init>(Lbkf;Lcom/facebook/GraphRequest;Lbls;Lblo;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lbkv;->a:Lbkf;

    iput-object p2, p0, Lbkv;->b:Lcom/facebook/GraphRequest;

    iput-object p3, p0, Lbkv;->c:Lbls;

    iput-object p4, p0, Lbkv;->d:Lblo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbix;)V
    .locals 4

    .prologue
    .line 241
    iget-object v0, p0, Lbkv;->a:Lbkf;

    iget-object v1, p0, Lbkv;->b:Lcom/facebook/GraphRequest;

    iget-object v2, p0, Lbkv;->c:Lbls;

    iget-object v3, p0, Lbkv;->d:Lblo;

    invoke-static {v0, v1, p1, v2, v3}, Lbkq;->a(Lbkf;Lcom/facebook/GraphRequest;Lbix;Lbls;Lblo;)V

    .line 247
    return-void
.end method
