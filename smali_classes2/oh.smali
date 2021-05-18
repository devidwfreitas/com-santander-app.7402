.class Loh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lod;


# direct methods
.method constructor <init>(Lod;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Loh;->a:Lod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 210
    invoke-static {}, Lzs;->a()Lzs;

    move-result-object v0

    iget-object v1, p0, Loh;->a:Lod;

    invoke-virtual {v1}, Lod;->e()Lack;

    move-result-object v1

    iget-object v2, p0, Loh;->a:Lod;

    invoke-static {v2}, Lod;->a(Lod;)Lacg;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lzs;->d(Landroid/content/Context;Lacg;)V

    return-void
.end method
