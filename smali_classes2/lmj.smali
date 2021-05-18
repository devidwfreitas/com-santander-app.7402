.class Llmj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Llmi;


# direct methods
.method constructor <init>(Llmi;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Llmj;->a:Llmi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 158
    if-eqz p2, :cond_0

    .line 159
    iget-object v0, p0, Llmj;->a:Llmi;

    invoke-static {v0}, Llmi;->a(Llmi;)V

    .line 161
    :cond_0
    return-void
.end method
