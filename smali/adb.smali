.class Ladb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lacy;


# direct methods
.method constructor <init>(Lacy;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Ladb;->a:Lacy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Ladb;->a:Lacy;

    invoke-static {v0}, Lacy;->c(Lacy;)V

    return-void
.end method
