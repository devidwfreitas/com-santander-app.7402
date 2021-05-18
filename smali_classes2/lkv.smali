.class Llkv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lkql;

.field final synthetic b:Llkx;

.field final synthetic c:Llkt;


# direct methods
.method constructor <init>(Llkt;Lkql;Llkx;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Llkv;->c:Llkt;

    iput-object p2, p0, Llkv;->a:Lkql;

    iput-object p3, p0, Llkv;->b:Llkx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Llkv;->c:Llkt;

    invoke-static {v0}, Llkt;->a(Llkt;)Llkz;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Llkv;->c:Llkt;

    invoke-static {v0}, Llkt;->a(Llkt;)Llkz;

    move-result-object v0

    iget-object v1, p0, Llkv;->a:Lkql;

    iget-object v2, p0, Llkv;->b:Llkx;

    invoke-static {v2}, Llkx;->a(Llkx;)Llla;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Llkz;->a(Ljava/lang/Object;Llla;)V

    .line 143
    :cond_0
    return-void
.end method
