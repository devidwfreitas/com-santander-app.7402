.class Log;
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
    .line 198
    iput-object p1, p0, Log;->a:Lod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Log;->a:Lod;

    invoke-virtual {v0}, Lod;->e()Lack;

    move-result-object v0

    invoke-virtual {v0}, Lack;->onBackPressed()V

    .line 202
    return-void
.end method
