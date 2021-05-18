.class Lbxj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbxy;


# instance fields
.field final synthetic a:Lbww;


# direct methods
.method constructor <init>(Lbww;)V
    .locals 0

    .prologue
    .line 1081
    iput-object p1, p0, Lbxj;->a:Lbww;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 1085
    sget-object v0, Lbxa;->a:[I

    iget-object v1, p0, Lbxj;->a:Lbww;

    invoke-static {v1}, Lbww;->i(Lbww;)Lccn;

    move-result-object v1

    invoke-virtual {v1}, Lccn;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1090
    new-instance v0, Lbxr;

    iget-object v1, p0, Lbxj;->a:Lbww;

    iget-object v2, p0, Lbxj;->a:Lbww;

    .line 1091
    invoke-static {v2}, Lbww;->h(Lbww;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lbxj;->a:Lbww;

    invoke-static {v3}, Lbww;->i(Lbww;)Lccn;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lbxr;-><init>(Lbww;Ljava/lang/String;Lccn;)V

    .line 1094
    :goto_0
    new-instance v1, Lbxp;

    iget-object v2, p0, Lbxj;->a:Lbww;

    iget-object v3, p0, Lbxj;->a:Lbww;

    .line 1095
    invoke-static {v3}, Lbww;->h(Lbww;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lbxj;->a:Lbww;

    invoke-static {v4}, Lbww;->i(Lbww;)Lccn;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lbxp;-><init>(Lbww;Ljava/lang/String;Lccn;)V

    .line 1097
    new-instance v2, Lbiu;

    invoke-direct {v2}, Lbiu;-><init>()V

    .line 1098
    invoke-interface {v0, v2}, Lbxu;->a(Lbiu;)V

    .line 1099
    invoke-virtual {v1, v2}, Lbxp;->a(Lbiu;)V

    .line 1101
    new-instance v3, Lbxk;

    invoke-direct {v3, p0, v0, v1}, Lbxk;-><init>(Lbxj;Lbxu;Lbxp;)V

    invoke-virtual {v2, v3}, Lbiu;->a(Lbiv;)V

    .line 1125
    invoke-virtual {v2}, Lbiu;->h()Lbit;

    .line 1126
    return-void

    .line 1087
    :pswitch_0
    new-instance v0, Lbxt;

    iget-object v1, p0, Lbxj;->a:Lbww;

    iget-object v2, p0, Lbxj;->a:Lbww;

    invoke-static {v2}, Lbww;->h(Lbww;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lbxt;-><init>(Lbww;Ljava/lang/String;)V

    goto :goto_0

    .line 1085
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
