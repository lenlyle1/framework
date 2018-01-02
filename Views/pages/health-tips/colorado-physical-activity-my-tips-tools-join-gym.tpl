{extends file='../../site_base.tpl'}

{block name="content"}

    <h3><a href="/health-tips">Health Tips</a></h3>
    
    <!--BREADCRUMBING HERE-->
    <h3 class="sh3"><a href="/health-tips/{$data.location}">{$data.label}</a> / <a href="/health-tips/{$data.location}/physical-activity">My Physical Activity</a> / 
    <a href="/health-tips/{$data.location}/physical-activity/my-tips-tools">My Tips and Tools</a> / Tools </h3>

    <br>

    <!--HTML CONTENT GOES HERE-->
<h1>I will join my local gym, YMCA, recreation center, or mall walking program</h1>

	<p>Most gyms offer classes and options for a variety of fitness levels. If you are thinking about using a gym here are some options to consider.</p>

	<table>
		<tbody>
			<tr>
				<th width="25%">Where</th>
				<th width="25%">What</th>
				<th width="25%">How much?</th>
				<th width="25%">Benefits</th>
			</tr>
			<tr>
				<td>Recreation Centers</td>
				<td>Fitness classes and equipment as well as swimming facilities and classes. Personal training available.</td>
				<td>Fees for residents and non-residents. Pay per visit, punch card or annual passes. Fees range from $3-$8 per visit per person.</td>
				<td>Flexible<br>Community friendly<br>Available in most cities/towns.</td>
			</tr>
			<tr>
				<td>YMCA</td>
				<td>Fitness classes and equipment as well as swimming facilities and classes. Personal training available.</td>
				<td>Fees for members and non-members. Pay per visit, punch card or annual passes. Fees range from $56 for individual to $80/month for family.</td>
				<td>Flexible<br>Community friendly<br>Check listing for your area.</td>
			</tr>
			<tr>
				<td>Local gym or Fitness Centers (i.e. 24-Hour Fitness, Colorado Athletic Club, Lifetime Fitness)</td>
				<td>Fitness classes and equipment, swimming facilities and classes may be available. Personal training available.</td>
				<td>Monthly member-based fees, ranging from $20-$80 per month/ per person.</td>
				<td>Fitness focused<br>Available in most cities/towns.</td>
			</tr>
			<tr>
				<td>Walking programs</td>
				<td>Check local mall and senior/recreation center for groups in your area.</td>
				<td>Free or low-cost</td>
				<td>Year round<br>Set times
				</td>
			</tr>
		</tbody>
	</table>

	<h3>Balance training</h3>
	<p>Balance training is tools or exercises that are specifically designed to help people with their balance. Check with your local recreation center to see if they offer balance training or tai chi classes.</p>

	<h3>Fitness Boot Camps</h3>
	<p>Modeled after military recruit training, fitness boot camps are gaining popularity. In general, fitness boot camps are rigorous physical training programs. Check the local listings in your area for a list of boot camps.</p>

	<h3>What if you have a chronic condition?</h3>

	<p>If you have a health condition such as arthritis, diabetes, or heart disease it doesn't mean you can't be active. In fact, it's just the opposite. Regular physical activity can improve your quality of life and even reduce your risk of developing other conditions.</p>
	<p>Talk with your doctor to find out if your health condition limits, in any way, your ability to be active. Then, work with your doctor to come up with a physical activity plan that matches your abilities. If your condition stops you from meeting the minimum <em>Guidelines</em> (30 minutes of moderate intensity physical activity on most days of the week), try to do as much as you can. What's important is that you avoid being inactive. Even 60 minutes a week of moderate-intensity aerobic activity is good for you.</p>

{/block}
