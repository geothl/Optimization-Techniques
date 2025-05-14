function  val= fun_est(u1,u2,A,C1,C2,S1,S2)
    val=0;
    for i=1:length(A)
        val=val+A(i)*Gaussian_2d(u1,u2,C1(i),C2(i),S1(i),S2(i));
    end
end