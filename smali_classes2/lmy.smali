.class Llmy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llmu;


# direct methods
.method constructor <init>(Llmu;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Llmy;->a:Llmu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Llmy;->a:Llmu;

    invoke-virtual {v0}, Llmu;->dismiss()V

    .line 227
    return-void
.end method
