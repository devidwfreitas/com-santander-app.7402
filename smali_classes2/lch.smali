.class Llch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llcf;


# direct methods
.method constructor <init>(Llcf;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Llch;->a:Llcf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Llch;->a:Llcf;

    invoke-static {v0}, Llcf;->b(Llcf;)V

    .line 122
    return-void
.end method
