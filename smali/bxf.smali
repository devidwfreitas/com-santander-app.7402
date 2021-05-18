.class Lbxf;
.super Lbyu;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lbww;


# direct methods
.method constructor <init>(Lbww;Lbhl;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 856
    iput-object p1, p0, Lbxf;->b:Lbww;

    iput-object p3, p0, Lbxf;->a:Landroid/os/Bundle;

    invoke-direct {p0, p2}, Lbyu;-><init>(Lbhl;)V

    return-void
.end method


# virtual methods
.method public a(Lbmr;)V
    .locals 1

    .prologue
    .line 933
    new-instance v0, Lbhr;

    invoke-direct {v0}, Lbhr;-><init>()V

    invoke-virtual {p0, p1, v0}, Lbxf;->a(Lbmr;Lbhp;)V

    .line 934
    return-void
.end method

.method public a(Lbmr;Landroid/os/Bundle;)V
    .locals 10

    .prologue
    .line 859
    if-eqz p2, :cond_0

    const-string v0, "object_is_liked"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 907
    :cond_0
    :goto_0
    return-void

    .line 864
    :cond_1
    const-string v0, "object_is_liked"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 867
    iget-object v0, p0, Lbxf;->b:Lbww;

    .line 868
    invoke-static {v0}, Lbww;->b(Lbww;)Ljava/lang/String;

    move-result-object v2

    .line 869
    iget-object v0, p0, Lbxf;->b:Lbww;

    .line 870
    invoke-static {v0}, Lbww;->c(Lbww;)Ljava/lang/String;

    move-result-object v3

    .line 871
    const-string v0, "like_count_string"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 872
    const-string v0, "like_count_string"

    .line 873
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 877
    :cond_2
    iget-object v0, p0, Lbxf;->b:Lbww;

    invoke-static {v0}, Lbww;->d(Lbww;)Ljava/lang/String;

    move-result-object v4

    .line 878
    iget-object v0, p0, Lbxf;->b:Lbww;

    .line 879
    invoke-static {v0}, Lbww;->e(Lbww;)Ljava/lang/String;

    move-result-object v5

    .line 880
    const-string v0, "social_sentence"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 881
    const-string v0, "social_sentence"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 886
    :cond_3
    const-string v0, "object_is_liked"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "unlike_token"

    .line 887
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 890
    :goto_1
    iget-object v0, p0, Lbxf;->a:Landroid/os/Bundle;

    if-nez v0, :cond_5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 892
    :goto_2
    const-string v7, "call_id"

    .line 894
    invoke-virtual {p1}, Lbmr;->c()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v8

    .line 892
    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    iget-object v7, p0, Lbxf;->b:Lbww;

    invoke-static {v7}, Lbww;->g(Lbww;)Lbla;

    move-result-object v7

    const-string v8, "fb_like_control_dialog_did_succeed"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v0}, Lbla;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 900
    iget-object v0, p0, Lbxf;->b:Lbww;

    invoke-static/range {v0 .. v6}, Lbww;->a(Lbww;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 887
    :cond_4
    iget-object v0, p0, Lbxf;->b:Lbww;

    .line 888
    invoke-static {v0}, Lbww;->f(Lbww;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 890
    :cond_5
    iget-object v0, p0, Lbxf;->a:Landroid/os/Bundle;

    goto :goto_2
.end method

.method public a(Lbmr;Lbhp;)V
    .locals 5

    .prologue
    .line 911
    sget-object v0, Lbjb;->REQUESTS:Lbjb;

    .line 913
    invoke-static {}, Lbww;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Like Dialog failed with error : %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    .line 911
    invoke-static {v0, v1, v2, v3}, Lbpu;->a(Lbjb;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 917
    iget-object v0, p0, Lbxf;->a:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 918
    :goto_0
    const-string v1, "call_id"

    .line 920
    invoke-virtual {p1}, Lbmr;->c()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 918
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    iget-object v1, p0, Lbxf;->b:Lbww;

    const-string v2, "present_dialog"

    invoke-static {v1, v2, v0}, Lbww;->a(Lbww;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 925
    iget-object v0, p0, Lbxf;->b:Lbww;

    const-string v1, "com.facebook.sdk.LikeActionController.DID_ERROR"

    .line 928
    invoke-static {p2}, Lbqa;->a(Lbhp;)Landroid/os/Bundle;

    move-result-object v2

    .line 925
    invoke-static {v0, v1, v2}, Lbww;->b(Lbww;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 929
    return-void

    .line 917
    :cond_0
    iget-object v0, p0, Lbxf;->a:Landroid/os/Bundle;

    goto :goto_0
.end method
