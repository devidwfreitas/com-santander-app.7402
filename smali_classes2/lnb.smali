.class Llnb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llna;


# direct methods
.method constructor <init>(Llna;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Llnb;->a:Llna;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Llnb;->a:Llna;

    invoke-virtual {v0}, Llna;->dismiss()V

    .line 81
    return-void
.end method
